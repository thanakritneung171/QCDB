SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                               @Id                   INT            = NULL, 
                                               @ProjectTypeId        INT            = NULL, 
                                               @WorkId               INT            = NULL, 
                                               @HouseId              INT            = NULL, 
                                               @ProjectCode          NVARCHAR(10)   = NULL, 
                                               @Type                 INT            = NULL, 
                                               @Price                DECIMAL(10, 2)  = NULL, 
                                               @Note                 NVARCHAR(MAX)  = NULL, 
                                               @Status               INT            = NULL, 
                                               @CreatedDate          DATETIME       = NULL, 
                                               @CreatedBy            INT            = NULL, 
                                               @ModifiedDate         DATETIME       = NULL, 
                                               @ModifiedBy           INT            = NULL, 
                                               @ApprovedDate         DATETIME       = NULL, 
                                               @ApprovedBy           INT            = NULL, 
                                               @SearchStatus         INT            = NULL, 
                                               @TotalPrice           DECIMAL(10, 2)  = NULL, 
                                               @WHT                  DECIMAL(10, 2)  = NULL, 
                                               @VATType              INT            = NULL, 
                                               @VAT                  DECIMAL(10, 2)  = NULL, 
                                               @NetPrice             DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ChangePriceMaster_Create] 
                     @ProjectTypeId, 
                     @WorkId, 
                     @HouseId, 
                     @ProjectCode, 
                     @Type, 
                     @Price, 
                     @Note, 
                     @Status, 
                     @CreatedDate, 
                     @CreatedBy, 
					 @TotalPrice,
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ChangePriceMaster_UPDATE] 
                     @Id, 
                     @Price, 
                     @Note, 
                     @Status, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @ApprovedDate, 
                     @ApprovedBy, 
					 @TotalPrice,
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ChangePriceMaster_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ChangePriceMaster_SELECT] 
                     @ProjectTypeId, 
                     @WorkId, 
                     @HouseId, 
                     @ProjectCode, 
                     @Type, 
                     @Status;
        END;
        IF @Control_Character_In = 'updateStatusAll'
            BEGIN
                EXEC [con].[ChangePriceMaster_UpdateStatusAll] 
                     @ProjectTypeId, 
                     @Status, 
                     @SearchStatus, 
                     @ApprovedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ChangePriceMaster_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;
GO
