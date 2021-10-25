SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummaryDetail_CRUD] @Control_Character_In      NVARCHAR(100)  = NULL, 
                                                            @RepairElectronicSummaryId INT            = NULL, 
                                                            @RepairDescription         NVARCHAR(MAX)  = NULL, 
                                                            @RepairDescriptionType     INT            = NULL, 
                                                            @Amount                    DECIMAL(10, 2)  = NULL, 
                                                            @PricePerAmount            DECIMAL(10, 2)  = NULL, 
                                                            @TotalPrice                DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairElectronicSummaryDetail_Create] 
                     @RepairElectronicSummaryId, 
                     @RepairDescription, 
                     @RepairDescriptionType, 
                     @Amount, 
                     @PricePerAmount, 
                     @TotalPrice;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairElectronicSummaryDetail_SELECT] 
                     @RepairElectronicSummaryId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairElectronicSummaryDetail_DELETE] 
                     @RepairElectronicSummaryId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
