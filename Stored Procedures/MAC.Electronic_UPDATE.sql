SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_UPDATE] @ElectronicCode   NVARCHAR(10)   = NULL, 
                                          @ElectronicTypeId INT            = NULL, 
                                          @ProjectCode      NVARCHAR(10)   = NULL, 
                                          @Brand            NVARCHAR(MAX)  = NULL, 
                                          @Model            NVARCHAR(MAX)  = NULL, 
                                          @Size             NVARCHAR(MAX)  = NULL, 
                                          @Color            NVARCHAR(MAX)  = NULL, 
                                          @Specification    NVARCHAR(MAX)  = NULL, 
                                          @SerialNumber     NVARCHAR(MAX)  = NULL, 
                                          @Active           BIT            = NULL, 
                                          @Status           INT            = NULL, 
                                          @BuyDate          DATETIME       = NULL, 
                                          @Price            DECIMAL(10, 2)  = NULL, 
                                          @EstimatedPrice   DECIMAL(10, 2)  = NULL, 
                                          @Amount           DECIMAL(10, 2)  = NULL, 
                                          @ModifiedDate     DATETIME       = NULL, 
                                          @ModifiedBy       INT            = NULL
AS
     UPDATE [MAC].[Electronic]
       SET 
           ElectronicTypeId = @ElectronicTypeId, 
           ProjectCode = @ProjectCode, 
           Brand = @Brand, 
           Model = @Model, 
           Size = @Size, 
           Color = @Color, 
           Specification = @Specification, 
           SerialNumber = @SerialNumber, 
           Active = @Active, 
           STATUS = @Status, 
           BuyDate = @BuyDate, 
           Price = @Price, 
           EstimatedPrice = @EstimatedPrice, 
		   Amount = @Amount,
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE ElectronicCode = @ElectronicCode;
GO
