SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PaymentDetail_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                           @Id                   INT            = NULL, 
                                           @PaymentCode          VARCHAR(10)    = NULL, 
                                           @Number               INT            = NULL, 
                                           @Period               INT            = NULL, 
                                           @WorkId               INT            = NULL, 
                                           @WorkName             NVARCHAR(256)  = NULL, 
                                           @ProjectCode          VARCHAR(10)    = NULL, 
                                           @ProjectName          NVARCHAR(256)  = NULL, 
                                           @MonthYear            NVARCHAR(50)   = NULL, 
                                           @Amount               DECIMAL(18, 0)  = NULL, 
                                           @WorkUnit             NVARCHAR(50)   = NULL, 
                                           @TotalPrice           DECIMAL(18, 0)  = NULL, 
                                           @PricePerUnit         DECIMAL(10, 2)  = NULL, 
                                           @WHT                  DECIMAL(10, 2)  = NULL, 
                                           @VATType              INT            = NULL, 
                                           @VAT                  DECIMAL(10, 2)  = NULL, 
                                           @NetPrice             DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[PaymentDetail_CREATE] 
                     @PaymentCode, 
                     @Number, 
                     @Period, 
                     @WorkId, 
                     @WorkName, 
                     @ProjectCode, 
                     @ProjectName, 
                     @MonthYear, 
                     @Amount, 
                     @WorkUnit, 
                     @TotalPrice, 
                     @PricePerUnit, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[PaymentDetail_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[PaymentDetail_SELECT] 
                     @PaymentCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
