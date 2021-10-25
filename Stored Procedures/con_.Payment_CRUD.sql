SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Payment_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                     @PaymentCode          VARCHAR(10)    = NULL, 
                                     @ContractorCode       VARCHAR(10)    = NULL, 
                                     @ContractorName       NVARCHAR(256)  = NULL, 
                                     @TotalPrice           DECIMAL(10, 2)  = NULL, 
                                     @VatPrice             DECIMAL(10, 2)  = NULL, 
                                     @NetPrice             DECIMAL(10, 2)  = NULL, 
                                     @PayDate              DATETIME       = NULL, 
                                     @ReceiveBy            NVARCHAR(256)  = NULL, 
                                     @Active               BIT            = NULL, 
                                     @CreatedDate          DATETIME       = NULL, 
                                     @CreatedBy            INT            = NULL, 
                                     @ModifiedDate         DATETIME       = NULL, 
                                     @ModifiedBy           INT            = NULL, 
                                     @SearchCreateDateForm DATE           = NULL, 
                                     @SearchCreateDateTo   DATE           = NULL, 
                                     @WHT                  DECIMAL(10, 2)  = NULL, 
                                     @VATType              INT            = NULL, 
                                     @Note                 NVARCHAR(MAX)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Payment_CREATE] 
                     @PaymentCode, 
                     @ContractorCode, 
                     @ContractorName, 
                     @TotalPrice, 
                     @VatPrice, 
                     @NetPrice, 
                     @PayDate, 
                     @ReceiveBy, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @WHT, 
                     @VATType,
					 @Note
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Payment_UPDATE] 
                     @PaymentCode, 
                     @TotalPrice, 
                     @VatPrice, 
                     @NetPrice, 
                     @PayDate, 
                     @ReceiveBy, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy,
					 @WHT, 
                     @VATType,
					 @Note
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Payment_READ_BY] 
                     @PaymentCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Payment_SELECT] 
                     @ContractorCode, 
                     @Active, 
                     @SearchCreateDateForm, 
                     @SearchCreateDateTo;
        END;
    END;
        SET ANSI_NULLS ON;
GO
