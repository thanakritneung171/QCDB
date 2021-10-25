SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferMachine_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                    @Id                   INT           = NULL, 
                                                    @MachineCode          NVARCHAR(10)  = NULL, 
                                                    @OldProjectCode       NVARCHAR(10)  = NULL, 
                                                    @NewProjectCode       NVARCHAR(10)  = NULL, 
                                                    @Status               INT           = NULL, 
                                                    @Note                 NVARCHAR(MAX) = NULL, 
                                                    @TransferDate         DATETIME      = NULL, 
                                                    @TransferBy           INT           = NULL, 
                                                    @CreatedDate          DATETIME      = NULL, 
                                                    @CreatedBy            INT           = NULL, 
                                                    @ModifiedDate         DATETIME      = NULL, 
                                                    @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[HistoryTransferMachine_Create] 
                     @MachineCode, 
                     @OldProjectCode, 
                     @NewProjectCode, 
                     @Status, 
                     @Note, 
                     @TransferDate, 
                     @TransferBy, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[HistoryTransferMachine_Update] 
                     @Id, 
                     @MachineCode, 
                     @OldProjectCode, 
                     @NewProjectCode, 
                     @Status, 
                     @Note, 
                     @TransferDate, 
                     @TransferBy, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[HistoryTransferMachine_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[HistoryTransferMachine_SELECT] 
                     @MachineCode, 
                     @NewProjectCode, 
                     @Status;
        END;
    END;
        SET ANSI_NULLS ON;
GO
