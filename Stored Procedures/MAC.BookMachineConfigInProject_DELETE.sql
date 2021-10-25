SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigInProject_DELETE] @BookMachineConfigId INT
AS
     DELETE [MAC].[BookMachineConfigInProject]
     WHERE BookMachineConfigId = @BookMachineConfigId;
GO
