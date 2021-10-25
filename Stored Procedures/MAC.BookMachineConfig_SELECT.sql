SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfig_SELECT] @MachineTypeId INT = NULL, 
                                                  @Active        BIT = NULL,
												  @MachineCode	 NVARCHAR(50) = NULL
AS
     SELECT *, 
            t.MachineTypeName AS MachineTypeName,
			t.MachineTypeName + '-' + RIGHT('00'+ISNULL(CAST(m.Number as NVARCHAR(10)),''),2) + ' ' + m.Model  as MachineName,
			(CASE WHEN (SELECT COUNT(*) FROM [MAC].[RepairNotify] rt WHERE rt.MachineCode = m.MachineCode AND rt.ProjectCode = m.ProjectCode AND rt.RepairStatus != 2 AND rt.RepairProgress < 8) = 0 THEN m.Status ELSE 2 END) as MachineStatus 
     FROM [MAC].[BookMachineConfig] bm
          LEFT JOIN [MAC].[MachineType] t ON bm.MachineTypeId = t.MachineTypeId
		  LEFT JOIN [MAC].[Machine] m ON  m.MachineCode = bm.MachineCode
     WHERE(bm.MachineTypeId = @MachineTypeId
           OR @MachineTypeId IS NULL)
          AND (bm.Active = @Active
               OR @Active IS NULL)
		  AND (bm.MachineCode = @MachineCode OR @MachineCode IS NULL)

GO
