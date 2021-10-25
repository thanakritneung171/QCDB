SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummaryDetail_CREATE] @RepairMachineSummaryId INT            = NULL, 
                                                          @RepairDescription      NVARCHAR(MAX)  = NULL, 
                                                          @RepairDescriptionType  INT            = NULL, 
                                                          @Amount                 DECIMAL(10, 2)  = NULL, 
                                                          @PricePerAmount         DECIMAL(10, 2)  = NULL, 
                                                          @TotalPrice             DECIMAL(10, 2)  = NULL, 
                                                          @ReceiptDate            DATETIME, 
                                                          @POCode                 VARCHAR(10)
AS
     INSERT INTO [MAC].[RepairMachineSummaryDetail]
     ([RepairMachineSummaryId], 
      [RepairDescription], 
      [RepairDescriptionType], 
      [Amount], 
      [PricePerAmount], 
      [TotalPrice], 
      [ReceiptDate], 
      [POCode]
     )
     VALUES
     (@RepairMachineSummaryId, 
      @RepairDescription, 
      @RepairDescriptionType, 
      @Amount, 
      @PricePerAmount, 
      @TotalPrice, 
      @ReceiptDate, 
      @POCode
     );
GO
