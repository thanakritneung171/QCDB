SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_DELETE] @BookMachineId       INT
AS
     DELETE [MAC].[BookMachine]
     WHERE BookMachineId = @BookMachineId;
GO
