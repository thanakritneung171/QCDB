SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigInProject_SELECT] @BookMachineConfigId INT,
														  @ProjectCode		   NVARCHAR(10)
AS
	 SELECT * 
     FROM [MAC].[BookMachineConfigInProject] p
     WHERE (BookMachineConfigId = @BookMachineConfigId OR @BookMachineConfigId IS NULL)  AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL);
GO
