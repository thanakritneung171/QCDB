SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceDetail_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                               @ChangePriceMasterId  INT            = NULL, 
                                               @WorkPriceId          INT            = NULL, 
                                               @Price                DECIMAL(10, 2)  = NULL, 
                                               @Amount               DECIMAL(10, 2)  = NULL, 
                                               @WorkUnit             NVARCHAR(50)   = NULL, 
                                               @TotalPrice           DECIMAL(10, 2)  = NULL, 
                                               @WHT                  DECIMAL(10, 2)  = NULL, 
                                               @VAT                  DECIMAL(10, 2)  = NULL, 
                                               @VATType              INT            = NULL, 
                                               @NetPrice             DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ChangePriceDetail_CREATE] 
                     @ChangePriceMasterId, 
                     @WorkPriceId, 
                     @Price, 
                     @Amount, 
                     @WorkUnit, 
					 @TotalPrice,
                     @WHT, 
                     @VAT, 
                     @VATType, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ChangePriceDetail_READ_BY] 
                     @ChangePriceMasterId, 
                     @WorkPriceId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ChangePriceDetail_DELETE] 
                     @ChangePriceMasterId, 
                     @WorkPriceId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ChangePriceDetail_SELECT] 
                     @ChangePriceMasterId, 
                     @WorkPriceId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
