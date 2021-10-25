SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_UPDATE] @Id                   INT           = NULL, 
                                                      @RepairElectronicCode NVARCHAR(10)  = NULL, 
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
     UPDATE [MAC].[RepairElectronicDetail]
       SET 
           RepairElectronicCode = @RepairElectronicCode, 
           ElectronicCode = @ElectronicCode, 
           BrokenDetail = @BrokenDetail, 
           HasReturn = @HasReturn, 
           RepairDetail = @RepairDetail, 
           ReasonBroken = @ReasonBroken, 
           RepairCompleteDate = @RepairCompleteDate, 
           RepairBy = @RepairBy, 
           HasCantFix = @HasCantFix, 
           CantFixReason = @CantFixReason, 
           ReceiveBy = @ReceiveBy, 
           ReceiveDate = @ReceiveDate
     WHERE Id = @Id;
GO
