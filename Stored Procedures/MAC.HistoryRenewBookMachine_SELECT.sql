SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryRenewBookMachine_SELECT] @BookMachineId INT = NULL
AS
     SELECT *
     FROM HistoryRenewBookMachine
     WHERE BookMachineId = @BookMachineId;
GO
