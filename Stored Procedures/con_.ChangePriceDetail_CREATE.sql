SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceDetail_CREATE] @ChangePriceMasterId INT            = NULL, 
                                                 @WorkPriceId         INT            = NULL, 
                                                 @Price               DECIMAL(10, 2)  = NULL, 
                                                 @Amount              DECIMAL(10, 2)  = NULL, 
                                                 @WorkUnit            NVARCHAR(50)   = NULL, 
                                                 @TotalPrice          DECIMAL(10, 2)  = NULL, 
                                                 @WHT                 DECIMAL(10, 2)  = NULL, 
                                                 @VAT                 DECIMAL(10, 2)  = NULL, 
                                                 @VATType             INT            = NULL, 
                                                 @NetPrice            DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [con].[ChangePriceDetail]
     ([ChangePriceMasterId], 
      [WorkPriceId], 
      [Price], 
      [Amount], 
      [WorkUnit], 
      [TotalPrice], 
      [WHT], 
      [VAT], 
      [VATType], 
      [NetPrice]
     )
     VALUES
     (@ChangePriceMasterId, 
      @WorkPriceId, 
      @Price, 
      @Amount, 
      @WorkUnit, 
      @TotalPrice, 
      @WHT, 
      @VAT, 
      @VATType, 
      @NetPrice
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
