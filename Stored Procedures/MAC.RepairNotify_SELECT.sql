SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_SELECT] @RepairNotifyCode       NVARCHAR(10)   = NULL,  
										    @MachineCode            NVARCHAR(10) = NULL, 
                                            @ProjectCode            NVARCHAR(10) = NULL, 
                                            @RepairProgress         INT          = NULL, 
                                            @SearchStartDate        DATETIME     = NULL, 
                                            @SearchToDate           DATETIME     = NULL, 
                                            @SearchMachineTypeId    INT          = NULL, 
                                            @SearchRepairManGroupId INT          = NULL, 
                                            @BookMachineId          INT          = NULL
AS
     SELECT *, 
            m.MachineName AS MachineName, 
            m.Model AS Model
     FROM [MAC].[RepairNotify] r
          LEFT JOIN [MAC].[Machine] m ON r.MachineCode = m.MachineCode
          LEFT JOIN [MAC].[MachineType] t ON t.MachineTypeId = m.MachineTypeId
          LEFT JOIN [MAC].RepairQueue q ON q.RepairNotifyCode = r.RepairNotifyCode
     WHERE(r.MachineCode = @MachineCode
           OR @MachineCode IS NULL)
          AND (r.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL
               OR @ProjectCode = '')
          AND (r.RepairProgress = @RepairProgress
               OR @RepairProgress IS NULL)
          AND (CAST(r.CreatedDate AS DATE) >= CAST(@SearchStartDate AS DATE)
               OR @SearchStartDate IS NULL)
          AND (CAST(r.CreatedDate AS DATE) <= CAST(@SearchToDate AS DATE)
               OR @SearchToDate IS NULL)
          AND (m.MachineTypeId = @SearchMachineTypeId
               OR @SearchMachineTypeId IS NULL)
          AND (q.RepairManGroupId = @SearchRepairManGroupId
               OR @SearchRepairManGroupId IS NULL)
          AND (r.BookMachineId = @BookMachineId
               OR @BookMachineId IS NULL)
		  AND (r.RepairNotifyCode like '%' + @RepairNotifyCode +'%' OR @RepairNotifyCode IS NULL)
GO
