SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_WAIT_SAVESUMMARY]  @RepairNotifyCode       NVARCHAR(10)   = NULL,
													   @MachineCode         NVARCHAR(10) = NULL, 
                                                       @ProjectCode         NVARCHAR(10) = NULL, 
                                                       @SearchMachineTypeId INT          = NULL
AS
     SELECT *, 
            m.MachineName AS MachineName, 
            m.Model AS Model
     FROM [MAC].[RepairNotify] r
          LEFT JOIN [MAC].[Machine] m ON r.MachineCode = m.MachineCode
          LEFT JOIN [MAC].[MachineType] t ON t.MachineTypeId = m.MachineTypeId
          LEFT JOIN [MAC].RepairMachineSummary s ON r.RepairNotifyCode = s.RepairNotifyCode
     WHERE (r.MachineCode = @MachineCode
           OR @MachineCode IS NULL)
          AND (r.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL
               OR @ProjectCode = '')
          AND (r.RepairProgress >= 6)
          AND (m.MachineTypeId = @SearchMachineTypeId
               OR @SearchMachineTypeId IS NULL)
		  AND s.Id IS NULL AND r.RepairStatus != 2
		  AND (r.RepairNotifyCode like '%' + @RepairNotifyCode +'%' OR @RepairNotifyCode IS NULL)
GO
