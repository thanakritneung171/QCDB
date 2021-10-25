SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachine_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                       @Id                   INT           = NULL, 
                                                       @ApproveConfirmDate   DATE          = NULL, 
                                                       @CreatedDate          DATETIME      = NULL, 
                                                       @CreatedBy            INT           = NULL, 
                                                       @ModifiedDate         DATETIME      = NULL, 
                                                       @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachine_Create] 
                     @ApproveConfirmDate, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachine_UPDATE] 
                     @Id, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachine_READ_BY] 
                     @ApproveConfirmDate;
        END;
    END;
        SET ANSI_NULLS ON;
GO
