SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderOtherDetail_CRUD] @Control_Character_In   NVARCHAR(100)  = NULL, 
                                                  @Id                     INT            = NULL, 
                                                  @WorkOrderId            INT            = NULL, 
                                                  @WorkName               NVARCHAR(255)  = NULL, 
                                                  @OtherDetailGroupWorkId INT            = NULL, 
                                                  @Amount                 DECIMAL(10, 2)  = NULL, 
                                                  @Price                  DECIMAL(10, 2)  = NULL, 
                                                  @TotalPrice             DECIMAL(10, 2)  = NULL, 
                                                  @WorkUnit               NVARCHAR(50)   = NULL, 
                                                  @ContractorName         NVARCHAR(256)  = NULL, 
                                                  @ContractorCode         VARCHAR(10)    = NULL, 
                                                  @Status                 INT            = NULL, 
                                                  @Active                 BIT            = NULL, 
                                                  @CreatedDate            DATETIME       = NULL, 
                                                  @CreatedBy              INT            = NULL, 
                                                  @ModifiedDate           DATETIME       = NULL, 
                                                  @ModifiedBy             INT            = NULL, 
                                                  @UnApproveNote          NVARCHAR(MAX)  = NULL, 
                                                  @WHT                    DECIMAL(10, 2)  = NULL, 
                                                  @VATType                INT            = NULL, 
                                                  @VAT                    DECIMAL(10, 2)  = NULL, 
                                                  @NetPrice               DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkOrderOtherDetail_CREATE] 
                     @WorkOrderId, 
                     @WorkName, 
                     @OtherDetailGroupWorkId, 
                     @Amount, 
                     @Price, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @ContractorName, 
                     @ContractorCode, 
                     @Status, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkOrderOtherDetail_UPDATE] 
                     @Id, 
                     @WorkOrderId, 
                     @WorkName, 
                     @OtherDetailGroupWorkId, 
                     @Amount, 
                     @Price, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @ContractorName, 
                     @ContractorCode, 
                     @Status, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @UnApproveNote, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[WorkOrderOtherDetail_DELETE] 
                     @Id;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkOrderOtherDetail_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkOrderOtherDetail_SELECT] 
                     @WorkOrderId, 
                     @OtherDetailGroupWorkId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
