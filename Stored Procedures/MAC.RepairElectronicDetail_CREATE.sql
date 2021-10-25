SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_CREATE] @RepairElectronicCode NVARCHAR(10)  = NULL, 
                                                      @ElectronicCode       NVARCHAR(10)  = NULL, 
                                                      @BrokenDetail         NVARCHAR(MAX) = NULL, 
                                                      @HasReturn            BIT           = NULL, 
                                                      @RepairDetail         NVARCHAR(MAX) = NULL, 
                                                      @ReasonBroken         NVARCHAR(MAX) = NULL, 
                                                      @RepairCompleteDate   DATE          = NULL, 
                                                      @RepairBy             NVARCHAR(255) = NULL, 
                                                      @HasCantFix           BIT           = NULL, 
                                                      @CantFixReason        NVARCHAR(MAX) = NULL, 
                                                      @ReceiveBy            NVARCHAR(255) = NULL, 
                                                      @ReceiveDate          DATE          = NULL
AS
     INSERT INTO [MAC].[RepairElectronicDetail]
     ([RepairElectronicCode], 
      [ElectronicCode], 
      [BrokenDetail], 
      [HasReturn], 
      [RepairDetail], 
      [ReasonBroken], 
      [RepairCompleteDate], 
      [RepairBy], 
      [HasCantFix], 
      [CantFixReason], 
      [ReceiveBy], 
      [ReceiveDate]
     )
     VALUES
     (@RepairElectronicCode, 
      @ElectronicCode, 
      @BrokenDetail, 
      @HasReturn, 
      @RepairDetail, 
      @ReasonBroken, 
      @RepairCompleteDate, 
      @RepairBy, 
      @HasCantFix, 
      @CantFixReason, 
      @ReceiveBy, 
      @ReceiveDate
     );
GO
