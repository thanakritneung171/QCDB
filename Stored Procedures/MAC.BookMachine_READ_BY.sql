SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_READ_BY] @BookMachineId INT = NULL
AS
     SELECT *, t.MachineTypeName as MachineTypeName , m.MachineName as MachineName, (CASE WHEN (SELECT COUNT(*) FROM [MAC].[RepairNotify] rt WHERE rt.MachineCode = m.MachineCode AND rt.ProjectCode = m.ProjectCode AND rt.RepairStatus != 2 AND rt.RepairProgress < 8) = 0 THEN m.Status ELSE 2 END) as MachineStatus 
			, apd.Code as ApproveConfirmBookMachineDetailCode
	 FROM [MAC].[BookMachine] bm
	 LEFT JOIN [MAC].[MachineType] t on t.MachineTypeId = bm.MachineTypeId
	 LEFT JOIN [MAC].[Machine] m on bm.MachineCode = m.MachineCode
	 LEFT JOIN [MAC].[ApproveConfirmBookMachineDetail] apd on apd.BookMachineId = bm.BookMachineId
     WHERE bm.BookMachineId = @BookMachineId;

GO
