SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigGroup_DELETE] @BookMachineConfigId INT
AS
     DELETE BookMachineConfigGroup
	 WHERE BookMachineConfigId = @BookMachineConfigId
GO
