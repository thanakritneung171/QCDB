SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_READ_BY] @RepairNotifyCode NVARCHAR(10) = NULL
AS
     SELECT *, m.MachineName as MachineName , m.Model as Model
     FROM [MAC].[RepairNotify] r
	 JOIN [MAC].[Machine] m on r.MachineCode = m.MachineCode
	 JOIN [MAC].[MachineType] t on t.MachineTypeId = m.MachineTypeId
     WHERE r.RepairNotifyCode = @RepairNotifyCode

GO
