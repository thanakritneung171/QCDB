SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_DELETE] @ApproveConfirmBookMachineId INT, 
                                                               @BookMachineId               INT
AS
     DELETE [MAC].[ApproveConfirmBookMachineDetail]
     WHERE (ApproveConfirmBookMachineId = @ApproveConfirmBookMachineId OR @ApproveConfirmBookMachineId IS NULL) AND (BookMachineId = @BookMachineId OR @BookMachineId IS NULL);
GO
