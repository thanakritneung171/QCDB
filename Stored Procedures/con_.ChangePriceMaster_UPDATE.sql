SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_UPDATE] @Id           INT            = NULL, 
                                                 @Price        DECIMAL(10, 2)  = NULL, 
                                                 @Note         NVARCHAR(MAX)  = NULL, 
                                                 @Status       INT            = NULL, 
                                                 @ModifiedDate DATETIME       = NULL, 
                                                 @ModifiedBy   INT            = NULL, 
                                                 @ApprovedDate DATETIME       = NULL, 
                                                 @ApprovedBy   INT            = NULL, 
                                                 @TotalPrice   DECIMAL(10, 2)  = NULL, 
                                                 @WHT          DECIMAL(10, 2)  = NULL, 
                                                 @VATType      INT            = NULL, 
                                                 @VAT          DECIMAL(10, 2)  = NULL, 
                                                 @NetPrice     DECIMAL(10, 2)  = NULL
AS
     UPDATE [con].[ChangePriceMaster]
       SET 
           [Price] = @Price, 
           [Note] = @Note, 
           [Status] = @Status, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [ApprovedDate] = @ApprovedDate, 
           [ApprovedBy] = @ApprovedBy, 
           [TotalPrice] = @TotalPrice, 
           [WHT] = @WHT, 
           [VATType] = @VATType, 
           [VAT] = @VAT, 
           [NetPrice] = @NetPrice
     WHERE Id = @Id;
GO
