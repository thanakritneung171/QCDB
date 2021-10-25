SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_CRUD] @Control_Character_In   NVARCHAR(100)  = NULL, 
                                       @Id                     INT            = NULL, 
                                       @ProjectCode            NVARCHAR(10)   = NULL, 
                                       @PlanCode               NVARCHAR(10)   = NULL, 
                                       @WorkId                 INT            = NULL, 
                                       @WorkPriceId            INT            = NULL, 
                                       @UnitId                 INT            = NULL, 
                                       @UnitName               NVARCHAR(256)  = NULL, 
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
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkOrder_UPDATE] 
                     @Id, 
                     @QCPass, 
                     @Amount, 
                     @Price, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @ContractorName, 
                     @ContractorCode, 
                     @Status, 
                     @Active, 
                     @LastModifiedQCPassDate, 
                     @LastModifiedQCPassBy, 
                     @LastModifiedAmountDate, 
                     @LastModifiedAmountBy, 
                     @LastModifiedStatusDate, 
                     @LastModifiedStatusBy, 
                     @UnApproveNote, 
                     @SetToPayType, 
                     @OldPrice, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkOrder_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkOrder_SELECT] 
                     @ProjectCode, 
                     @PlanCode, 
                     @WorkId, 
                     @Status, 
                     @Active, 
                     @UnitName, 
                     @UnitId, 
                     @SetToPayType;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[WorkOrder_DELETE] 
                     @Id;
        END;
        IF @Control_Character_In = 'generate'
            BEGIN
                EXEC [con].[WorkOrder_Generate] 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'summary'
            BEGIN
                EXEC [con].[WorkOrder_SUMMARY] 
                     @Status, 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkOrder_CREATE] 
                     @ProjectCode, 
                     @PlanCode, 
                     @WorkId, 
                     @UnitId, 
                     @UnitName, 
                     @Amount, 
                     @Price, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @ContractorName, 
                     @ContractorCode, 
                     @Status, 
                     @Active, 
                     @SetToPayType;
        END;
    END;
        SET ANSI_NULLS ON;
GO
