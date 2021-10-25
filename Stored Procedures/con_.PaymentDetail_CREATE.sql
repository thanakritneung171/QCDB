SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PaymentDetail_CREATE] @PaymentCode  VARCHAR(10)    = NULL, 
                                             @Number       INT            = NULL, 
                                             @Period       INT            = NULL, 
                                             @WorkId       INT            = NULL, 
                                             @WorkName     NVARCHAR(256)  = NULL, 
                                             @ProjectCode  VARCHAR(10)    = NULL, 
                                             @ProjectName  NVARCHAR(256)  = NULL, 
                                             @MonthYear    NVARCHAR(50)   = NULL, 
                                             @Amount       DECIMAL(18, 0)  = NULL, 
                                             @WorkUnit     NVARCHAR(50)   = NULL, 
                                             @TotalPrice   DECIMAL(18, 0)  = NULL, 
                                             @PricePerUnit DECIMAL(10, 2)  = NULL, 
                                             @WHT          DECIMAL(10, 2)  = NULL, 
                                             @VATType      INT            = NULL, 
                                             @VAT          DECIMAL(10, 2)  = NULL, 
                                             @NetPrice     DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [con].[PaymentDetail]
     (PaymentCode, 
      Number, 
      Period, 
      WorkId, 
      WorkName, 
      ProjectCode, 
      ProjectName, 
      MonthYear, 
      Amount, 
      WorkUnit, 
      TotalPrice, 
      PricePerUnit, 
      WHT, 
      VATType, 
      VAT, 
      NetPrice
     )
     VALUES
     (@PaymentCode, 
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
      @NetPrice
     );
GO
