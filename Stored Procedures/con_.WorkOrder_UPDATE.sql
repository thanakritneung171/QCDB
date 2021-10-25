SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_UPDATE] @Id                     INT            = NULL, 
                                         @QCPass                 BIT            = NULL, 
                                         @Amount                 DECIMAL(10, 2)  = NULL, 
                                         @Price                  DECIMAL(10, 2)  = NULL, 
                                         @TotalPrice             DECIMAL(10, 2)  = NULL, 
                                         @WorkUnit               NVARCHAR(50)   = NULL, 
                                         @ContractorName         NVARCHAR(256)  = NULL, 
                                         @ContractorCode         VARCHAR(10)    = NULL, 
                                         @Status                 INT            = NULL, 
                                         @Active                 BIT            = NULL, 
                                         @LastModifiedQCPassDate DATETIME       = NULL, 
                                         @LastModifiedQCPassBy   INT            = NULL, 
                                         @LastModifiedAmountDate DATETIME       = NULL, 
                                         @LastModifiedAmountBy   INT            = NULL, 
                                         @LastModifiedStatusDate DATETIME       = NULL, 
                                         @LastModifiedStatusBy   INT            = NULL, 
                                         @UnApproveNote          NVARCHAR(MAX)  = NULL, 
                                         @SetToPayType           INT            = NULL, 
                                         @OldPrice               DECIMAL(10, 2)  = NULL, 
                                         @WHT                    DECIMAL(10, 2)  = NULL, 
                                         @VATType                INT            = NULL, 
                                         @VAT                    DECIMAL(10, 2)  = NULL, 
                                         @NetPrice               DECIMAL(10, 2)  = NULL
AS
    BEGIN
        UPDATE con.[WorkOrder]
          SET 
              QCPass = @QCPass, 
              Amount = @Amount, 
              Price = @Price, 
              TotalPrice = @TotalPrice, 
              WorkUnit = @WorkUnit, 
              ContractorName = @ContractorName, 
              ContractorCode = @ContractorCode, 
              STATUS = @Status, 
              Active = @Active, 
              LastModifiedQCPassDate = @LastModifiedQCPassDate, 
              LastModifiedQCPassBy = @LastModifiedQCPassBy, 
              LastModifiedAmountDate = @LastModifiedAmountDate, 
              LastModifiedAmountBy = @LastModifiedAmountBy, 
              LastModifiedStatusDate = @LastModifiedStatusDate, 
              LastModifiedStatusBy = @LastModifiedStatusBy, 
              UnApproveNote = @UnApproveNote, 
              SetToPayType = @SetToPayType, 
              OldPrice = @OldPrice, 
              WHT = @WHT, 
              VATType = @VATType, 
              VAT = @VAT, 
              NetPrice = @NetPrice
        WHERE Id = @Id;
    END;
GO
