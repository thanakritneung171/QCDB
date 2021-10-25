SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferMachine_SELECT] @MachineCode    NVARCHAR(10) = NULL, 
                                                      @NewProjectCode NVARCHAR(10) = NULL, 
                                                      @Status         INT          = NULL
AS
     SELECT *
     FROM [MAC].HistoryTransferMachine tm
     WHERE(tm.MachineCode = @MachineCode
           OR @MachineCode IS NULL)
          AND (tm.NewProjectCode = @NewProjectCode
               OR @NewProjectCode IS NULL)
          AND (tm.STATUS = @Status
               OR @Status IS NULL);
GO
