SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigGroup_SELECT] @BookMachineConfigId INT, 
                                                       @MachineCode         NVARCHAR(10)
AS
     SELECT *
	 FROM BookMachineConfigGroup bg
	 JOIN Machine m on m.MachineCode = bg.MachineCode
	 WHERE (bg.BookMachineConfigId = @BookMachineConfigId OR @BookMachineConfigId IS NULL) AND (bg.MachineCode  = @MachineCode OR @MachineCode IS NULL)
GO
