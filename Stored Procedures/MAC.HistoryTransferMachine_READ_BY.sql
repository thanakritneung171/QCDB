SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferMachine_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM HistoryTransferMachine
     WHERE Id = @Id;
GO
