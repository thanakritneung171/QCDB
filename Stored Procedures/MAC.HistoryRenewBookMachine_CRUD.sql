SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryRenewBookMachine_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                      @BookMachineId        INT           = NULL, 
                                                      @OldStartDate         DATE          = NULL, 
                                                      @NewStartDate         DATE          = NULL, 
                                                      @OldEndDate           DATE          = NULL, 
                                                      @NewEndDate           DATE          = NULL, 
                                                      @Status               INT           = NULL, 
                                                      @CreatedDate          DATETIME      = NULL, 
                                                      @CreatedBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[HistoryRenewBookMachine_Create] 
                     @BookMachineId, 
                     @OldStartDate, 
                     @NewStartDate, 
                     @OldEndDate, 
                     @NewEndDate, 
                     @Status, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[HistoryRenewBookMachine_SELECT] 
                     @BookMachineId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
