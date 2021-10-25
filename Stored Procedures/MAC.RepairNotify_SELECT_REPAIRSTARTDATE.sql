SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_SELECT_REPAIRSTARTDATE] @SearchStartDate        DATETIME = NULL, 
                                                            @SearchToDate           DATETIME = NULL, 
                                                            @SearchRepairManGroupId INT      = NULL
AS
     SELECT DISTINCT 
            r.*,m.*,
			m.MachineName AS MachineName, 
            m.Model AS Model
     FROM
     (
         SELECT DISTINCT 
                MIN(rl.CreatedDate) AS StartRepairDate, 
                rl.RepairNotifyCode
         FROM [MAC].[RepairNotify] r
              JOIN [MAC].[RepairLog] rl ON rl.RepairNotifyCode = r.RepairNotifyCode
			  JOIN [MAC].RepairQueue q ON q.RepairNotifyCode = r.RepairNotifyCode
		AND (q.RepairManGroupId = @SearchRepairManGroupId
               OR @SearchRepairManGroupId IS NULL)
         GROUP BY rl.RepairNotifyCode
     ) AS RESULT
     JOIN [MAC].[RepairNotify] r ON RESULT.RepairNotifyCode = r.RepairNotifyCode
	 LEFT JOIN [MAC].[Machine] m ON r.MachineCode = m.MachineCode
     WHERE(CAST(RESULT.StartRepairDate AS DATE) >= CAST(@SearchStartDate AS DATE)
           OR @SearchStartDate IS NULL)
          AND (CAST(RESULT.StartRepairDate AS DATE) <= CAST(@SearchToDate AS DATE)
               OR @SearchToDate IS NULL)
GO
