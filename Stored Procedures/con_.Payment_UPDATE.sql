SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Payment_UPDATE] @PaymentCode  VARCHAR(10)    = NULL, 
                                       @TotalPrice   DECIMAL(10, 2)  = NULL, 
                                       @VatPrice     DECIMAL(10, 2)  = NULL, 
                                       @NetPrice     DECIMAL(10, 2)  = NULL, 
                                       @PayDate      DATETIME       = NULL, 
                                       @ReceiveBy    NVARCHAR(256)  = NULL, 
                                       @Active       BIT            = NULL, 
                                       @ModifiedDate DATETIME       = NULL, 
                                       @ModifiedBy   INT            = NULL, 
                                       @WHT          DECIMAL(10, 2)  = NULL, 
                                       @VATType      INT            = NULL, 
                                       @Note         NVARCHAR(MAX)  = NULL
AS
     UPDATE [con].[Payment]
       SET 
           PaymentCode = @PaymentCode, 
           TotalPrice = @TotalPrice, 
           VatPrice = @VatPrice, 
           NetPrice = @NetPrice, 
           PayDate = @PayDate, 
           ReceiveBy = @ReceiveBy, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy, 
           WHT = @WHT, 
           VATType = @VATType, 
           Note = @Note
     WHERE PaymentCode = @PaymentCode;
GO
