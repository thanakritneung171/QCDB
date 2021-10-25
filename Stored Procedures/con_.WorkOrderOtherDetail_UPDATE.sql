SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderOtherDetail_UPDATE] @Id                     INT            = NULL, 
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
                                                    @ModifiedDate           DATETIME       = NULL, 
                                                    @ModifiedBy             INT            = NULL, 
                                                    @UnApproveNote          NVARCHAR(MAX)  = NULL, 
                                                    @WHT                    DECIMAL(10, 2)  = NULL, 
                                                    @VATType                INT            = NULL, 
                                                    @VAT                    DECIMAL(10, 2)  = NULL, 
                                                    @NetPrice               DECIMAL(10, 2)  = NULL
AS
     UPDATE [con].[WorkOrderOtherDetail]
       SET 
           WorkOrderId = @WorkOrderId, 
           WorkName = @WorkName, 
           OtherDetailGroupWorkId = @OtherDetailGroupWorkId, 
           Amount = @Amount, 
           Price = @Price, 
           TotalPrice = @TotalPrice, 
           WorkUnit = @WorkUnit, 
           ContractorName = @ContractorName, 
           ContractorCode = @ContractorCode, 
           STATUS = @Status, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy, 
           UnApproveNote = @UnApproveNote, 
           WHT = @WHT, 
           VATType = @VATType, 
           VAT = @VAT, 
           NetPrice = @NetPrice
     WHERE(Id = @Id
           OR @Id IS NULL)
          AND (OtherDetailGroupWorkId = @OtherDetailGroupWorkId
               OR @OtherDetailGroupWorkId IS NULL);
GO
