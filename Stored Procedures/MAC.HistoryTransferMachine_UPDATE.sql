SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferMachine_UPDATE] @Id             INT           = NULL, 
                                                      @MachineCode    NVARCHAR(10)  = NULL, 
                                                      @OldProjectCode NVARCHAR(10)  = NULL, 
                                                      @NewProjectCode NVARCHAR(10)  = NULL, 
                                                      @Status         INT           = NULL, 
                                                      @Note           NVARCHAR(MAX) = NULL, 
                                                      @TransferDate   DATETIME      = NULL, 
                                                      @TransferBy     INT           = NULL, 
                                                      @ModifiedDate   DATETIME      = NULL, 
                                                      @ModifiedBy     INT           = NULL
AS
     UPDATE [MAC].[HistoryTransferMachine]
       SET 
           [MachineCode] = @MachineCode, 
           [OldProjectCode] = @OldProjectCode, 
           [NewProjectCode] = @NewProjectCode, 
           [Status] = @Status, 
           [Note] = @Note, 
           [TransferDate] = @TransferDate, 
           [TransferBy] = @TransferBy, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;
GO
