SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfig_READ_BY] @Id INT = NULL
AS
     SELECT * , (CASE WHEN (SELECT COUNT(*) FROM [MAC].[RepairNotify] rt WHERE rt.MachineCode = m.MachineCode AND rt.ProjectCode = m.ProjectCode AND rt.RepairStatus != 2 AND rt.RepairProgress < 8) = 0 THEN m.Status ELSE 2 END) as MachineStatus 
	 FROM [MAC].[BookMachineConfig] c
	 LEFT JOIN [MAC].[Machine] m ON  m.MachineCode = c.MachineCode
     WHERE c.Id = @Id;

GO
