SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                            @Id                   INT           = NULL, 
                                            @ProjectTypeId        INT           = NULL, 
                                            @WorkGroupMainId      INT           = NULL, 
                                            @WorkGroupId          INT           = NULL, 
                                            @WorkId               INT           = NULL, 
                                            @WorkName             NVARCHAR(255) = NULL, 
                                            @Number               INT           = NULL, 
                                            @WorkUnit             INT           = NULL, 
                                            @QCPassBeforePay      BIT           = NULL, 
                                            @SetAmountBeforePay   BIT           = NULL, 
                                            @IsNoPrice            BIT           = NULL, 
                                            @WorkAmountWeight     INT           = NULL, 
                                            @Note                 NVARCHAR(255) = NULL, 
                                            @Status               INT           = NULL, 
                                            @Active               BIT           = NULL, 
                                            @IsCurrent            BIT           = NULL, 
                                            @CreatedDate          DATETIME      = NULL, 
                                            @CreatedBy            INT           = NULL, 
                                            @ModifiedDate         DATETIME      = NULL, 
                                            @ModifiedBy           INT           = NULL, 
                                            @ApprovedDate         DATETIME      = NULL, 
                                            @ApprovedBy           INT           = NULL, 
                                            @SearchStatus         INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkStatement_Create] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupId, 
                     @WorkId, 
                     @WorkName, 
                     @Number, 
                     @WorkUnit, 
                     @QCPassBeforePay, 
                     @SetAmountBeforePay, 
                     @IsNoPrice, 
                     @WorkAmountWeight, 
                     @Note, 
                     @Status, 
                     @Active, 
                     @IsCurrent, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkStatement_UPDATE] 
                     @Id, 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupId, 
                     @WorkId, 
                     @WorkName, 
                     @Number, 
                     @WorkUnit, 
                     @QCPassBeforePay, 
                     @SetAmountBeforePay, 
                     @IsNoPrice, 
                     @WorkAmountWeight, 
                     @Note, 
                     @Status, 
                     @Active, 
                     @IsCurrent, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'updateStatusAll'
            BEGIN
                EXEC [con].[WorkStatement_UpdateStatusAll] 
                     @ProjectTypeId, 
                     @Status, 
                     @SearchStatus, 
                     @ApprovedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkStatement_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkStatement_SELECT] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupId, 
                     @WorkId, 
                     @Active, 
                     @IsCurrent, 
                     @Status;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[WorkStatement_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;


GO
