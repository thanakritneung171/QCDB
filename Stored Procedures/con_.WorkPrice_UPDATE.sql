SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkPrice_UPDATE] @Id           INT            = NULL, 
                                         @Price        DECIMAL(10, 2)  = NULL, 
                                         @OldPrice     DECIMAL(10, 2)  = NULL, 
                                         @Amount       DECIMAL(10, 2)  = NULL, 
                                         @ModifiedDate DATETIME       = NULL, 
                                         @ModifiedBy   INT            = NULL, 
                                         @TotalPrice   DECIMAL(10, 2)  = NULL, 
                                         @WHT          DECIMAL(10, 2)  = NULL, 
                                         @VATType      INT            = NULL, 
                                         @VAT          DECIMAL(10, 2)  = NULL, 
                                         @NetPrice     DECIMAL(10, 2)  = NULL, 
                                         @OldNetPrice  DECIMAL(10, 2)  = NULL
AS
     UPDATE [con].[WorkPrice]
       SET 
           Price = @Price, 
           OldPrice = @OldPrice, 
           Amount = @Amount, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy, 
           TotalPrice = @TotalPrice, 
           WHT = @WHT, 
           VATType = @VATType, 
           VAT = @VAT, 
           NetPrice = @NetPrice, 
           OldNetPrice = @OldNetPrice
     WHERE Id = @Id;
GO
