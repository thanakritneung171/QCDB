SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummaryDetail_CREATE] @RepairElectronicSummaryId INT            = NULL, 
                                                              @RepairDescription         NVARCHAR(MAX)  = NULL, 
                                                              @RepairDescriptionType     INT            = NULL, 
                                                              @Amount                    DECIMAL(10, 2)  = NULL, 
                                                              @PricePerAmount            DECIMAL(10, 2)  = NULL, 
                                                              @TotalPrice                DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [MAC].[RepairElectronicSummaryDetail]
     ([RepairElectronicSummaryId], 
      [RepairDescription], 
      [RepairDescriptionType], 
      [Amount], 
      [PricePerAmount], 
      [TotalPrice]
     )
     VALUES
     (@RepairElectronicSummaryId, 
      @RepairDescription, 
      @RepairDescriptionType, 
      @Amount, 
      @PricePerAmount, 
      @TotalPrice
     );
GO
