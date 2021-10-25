SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkPrice_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                       @Id                   INT            = NULL, 
                                       @ProjectTypeId        INT            = NULL, 
                                       @WorkId               INT            = NULL, 
                                       @HouseId              INT            = NULL, 
                                       @ProjectCode          NVARCHAR(10)   = NULL, 
                                       @Price                DECIMAL(10, 2)  = NULL, 
                                       @OldPrice             DECIMAL(10, 2)  = NULL, 
                                       @Amount               DECIMAL(10, 2)  = NULL, 
                                       @ModifiedDate         DATETIME       = NULL, 
                                       @ModifiedBy           INT            = NULL, 
                                       @TotalPrice           DECIMAL(10, 2)  = NULL, 
                                       @WHT                  DECIMAL(10, 2)  = NULL, 
                                       @VATType              INT            = NULL, 
                                       @VAT                  DECIMAL(10, 2)  = NULL, 
                                       @NetPrice             DECIMAL(10, 2)  = NULL, 
                                       @OldNetPrice          DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkPrice_Create] 
                     @ProjectTypeId, 
                     @WorkId, 
                     @HouseId, 
                     @ProjectCode, 
                     @Price, 
                     @OldPrice, 
                     @ModifiedDate, 
                     @ModifiedBy, 
					 @TotalPrice,
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice, 
                     @OldNetPrice;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkPrice_UPDATE] 
                     @Id, 
                     @Price, 
                     @OldPrice, 
                     @Amount, 
                     @ModifiedDate, 
                     @ModifiedBy, 
					 @TotalPrice,
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice, 
                     @OldNetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkPrice_READ_BY] 
                     @Id, 
                     @ProjectTypeId, 
                     @WorkId, 
                     @HouseId, 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkPrice_SELECT] 
                     @ProjectTypeId, 
                     @WorkId, 
                     @HouseId, 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
