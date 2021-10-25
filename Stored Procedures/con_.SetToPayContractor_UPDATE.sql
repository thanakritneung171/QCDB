SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[SetToPayContractor_UPDATE] @Id                INT            = NULL, 
                                                  @ContractorCode    NVARCHAR(10)   = NULL, 
                                                  @ContractorName    NVARCHAR(256)  = NULL, 
                                                  @Price             DECIMAL(10, 2)  = NULL, 
                                                  @Amount            DECIMAL(10, 2)  = NULL, 
                                                  @TotalPrice        DECIMAL(10, 2)  = NULL, 
                                                  @WorkUnit          NVARCHAR(100)  = NULL, 
                                                  @Note              NVARCHAR(256)  = NULL, 
                                                  @Status            INT            = NULL, 
                                                  @Active            BIT            = NULL, 
                                                  @ModifiedDate      DATETIME       = NULL, 
                                                  @ModifiedBy        INT            = NULL, 
                                                  @ApproveLevel1Date DATETIME       = NULL, 
                                                  @ApproveLevel1By   INT            = NULL, 
                                                  @ApproveLevel2Date DATETIME       = NULL, 
                                                  @ApproveLevel2By   INT            = NULL, 
                                                  @PayContractorCode VARCHAR(10)    = NULL, 
                                                  @WHT               DECIMAL(10, 2)  = NULL, 
                                                  @VATType           INT            = NULL, 
                                                  @VAT               DECIMAL(10, 2)  = NULL, 
                                                  @NetPrice          DECIMAL(10, 2)  = NULL
AS
     UPDATE [con].[SetToPayContractor]
       SET 
           ContractorCode = @ContractorCode, 
           ContractorName = @ContractorName, 
           Price = @Price, 
           Amount = @Amount, 
           TotalPrice = @TotalPrice, 
           WorkUnit = @WorkUnit, 
           Note = @Note, 
           STATUS = @Status, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy, 
           ApproveLevel1Date = @ApproveLevel1Date, 
           ApproveLevel1By = @ApproveLevel1By, 
           ApproveLevel2Date = @ApproveLevel2Date, 
           ApproveLevel2By = @ApproveLevel2By, 
           PayContractorCode = @PayContractorCode, 
           WHT = @WHT, 
           VATType = @VATType, 
           VAT = @VAT, 
           NetPrice = @NetPrice
     WHERE Id = @Id;
GO
