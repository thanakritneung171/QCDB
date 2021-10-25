SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_SELECT_REPAIRCOMPLETEDATE] @RepairNotifyCode    NVARCHAR(10) = NULL, 
                                                               @SearchStartDate     DATETIME     = NULL, 
                                                               @SearchToDate        DATETIME     = NULL, 
                                                               @ProjectCode         NVARCHAR(10) = NULL, 
                                                               @SearchMachineTypeId INT          = NULL
AS
     SELECT DISTINCT 
            r.*, 
            m.*, 
            m.MachineName AS MachineName, 
            m.Model AS Model, 
            RESULT.CompleteRepairDate AS CloseRepairDate, 
            RESULT.QueueCode AS QueueCode
     FROM
     (
         SELECT DISTINCT 
                MAX(rl.CreatedDate) AS CompleteRepairDate, 
                rl.RepairNotifyCode, 
                MAX(q.QueueCode) AS QueueCode
         FROM [MAC].[RepairNotify] r
              JOIN [MAC].[RepairLog] rl ON rl.RepairNotifyCode = r.RepairNotifyCode
              JOIN [MAC].RepairQueue q ON q.RepairNotifyCode = r.RepairNotifyCode
              JOIN [MAC].[Machine] m ON r.MachineCode = m.MachineCode
         WHERE(r.RepairProgress >= 6
               AND r.RepairStatus != 2)
              AND ((CAST(rl.CreatedDate AS DATE) >= CAST(@SearchStartDate AS DATE)
                    OR @SearchStartDate IS NULL)
                   AND (CAST(rl.CreatedDate AS DATE) <= CAST(@SearchToDate AS DATE)
                        OR @SearchToDate IS NULL)
                   AND (m.MachineTypeId = @SearchMachineTypeId
                        OR @SearchMachineTypeId IS NULL)
                   AND (r.ProjectCode = @ProjectCode
                        OR @ProjectCode IS NULL
                        OR @ProjectCode = '')
                   OR @RepairNotifyCode IS NOT NULL)
              AND (r.RepairNotifyCode LIKE '%' + @RepairNotifyCode + '%'
                   OR @RepairNotifyCode IS NULL)
         GROUP BY rl.RepairNotifyCode
     ) AS RESULT
     JOIN [MAC].[RepairNotify] r ON RESULT.RepairNotifyCode = r.RepairNotifyCode
     LEFT JOIN [MAC].[Machine] m ON r.MachineCode = m.MachineCode
     WHERE((CAST(RESULT.CompleteRepairDate AS DATE) >= CAST(@SearchStartDate AS DATE)
            OR @SearchStartDate IS NULL)
           AND (CAST(RESULT.CompleteRepairDate AS DATE) <= CAST(@SearchToDate AS DATE)
                OR @SearchToDate IS NULL)
           OR @RepairNotifyCode IS NOT NULL)
          AND (r.RepairNotifyCode LIKE '%' + @RepairNotifyCode + '%'
               OR @RepairNotifyCode IS NULL);
GO
