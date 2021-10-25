SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummaryDetail_CRUD] @Control_Character_In   NVARCHAR(100)  = NULL, 
                                                        @RepairMachineSummaryId INT            = NULL, 
                                                        @RepairDescription      NVARCHAR(MAX)  = NULL, 
                                                        @RepairDescriptionType  INT            = NULL, 
                                                        @Amount                 DECIMAL(10, 2)  = NULL, 
                                                        @PricePerAmount         DECIMAL(10, 2)  = NULL, 
                                                        @TotalPrice             DECIMAL(10, 2)  = NULL, 
                                                        @ReceiptDate            DATETIME, 
                                                        @POCode                 VARCHAR(10)
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairMachineSummaryDetail_Create] 
                     @RepairMachineSummaryId, 
                     @RepairDescription, 
                     @RepairDescriptionType, 
                     @Amount, 
                     @PricePerAmount, 
                     @TotalPrice, 
                     @ReceiptDate, 
                     @POCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairMachineSummaryDetail_SELECT] 
                     @RepairMachineSummaryId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairMachineSummaryDetail_DELETE] 
                     @RepairMachineSummaryId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
