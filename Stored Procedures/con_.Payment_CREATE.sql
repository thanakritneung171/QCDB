SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Payment_CREATE] @PaymentCode    VARCHAR(10)    = NULL, 
                                       @ContractorCode VARCHAR(10)    = NULL, 
                                       @ContractorName NVARCHAR(256)  = NULL, 
                                       @TotalPrice     DECIMAL(10, 2)  = NULL, 
                                       @VatPrice       DECIMAL(10, 2)  = NULL, 
                                       @NetPrice       DECIMAL(10, 2)  = NULL, 
                                       @PayDate        DATETIME       = NULL, 
                                       @ReceiveBy      NVARCHAR(256)  = NULL, 
                                       @Active         BIT            = NULL, 
                                       @CreatedDate    DATETIME       = NULL, 
                                       @CreatedBy      INT            = NULL, 
                                       @WHT            DECIMAL(10, 2)  = NULL, 
                                       @VATType        INT            = NULL, 
                                       @Note           NVARCHAR(MAX)  = NULL
AS
     DECLARE @CountPaymentCode INT=
     (
         SELECT COUNT(*)
         FROM con.Payment
         WHERE YEAR(CreatedDate) = YEAR(GETDATE())
     );
     SET @PaymentCode =
     (
         SELECT 'P' + RIGHT(CAST(YEAR(GETDATE()) + 543 AS NVARCHAR(10)), 2) + RIGHT('00000' + CAST((@CountPaymentCode + 1) AS NVARCHAR(10)), 5)
     );
     INSERT INTO [con].[Payment]
     (PaymentCode, 
      ContractorCode, 
      TotalPrice, 
      VatPrice, 
      NetPrice, 
      PayDate, 
      ReceiveBy, 
      Active, 
      CreatedDate, 
      CreatedBy, 
      WHT, 
      VATType, 
      Note
     )
     VALUES
     (@PaymentCode, 
      @ContractorCode, 
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
     );
     SELECT @PaymentCode AS PaymentCode;
GO
