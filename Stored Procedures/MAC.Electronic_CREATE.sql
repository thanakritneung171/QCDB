SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_CREATE] @ElectronicCode   NVARCHAR(10)   = NULL, 
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
                                          @RunningNo        INT            = NULL, 
                                          @BuyDate          DATETIME       = NULL, 
                                          @Price            DECIMAL(10, 2)  = NULL, 
                                          @EstimatedPrice   DECIMAL(10, 2)  = NULL, 
                                          @Amount           DECIMAL(10, 2)  = NULL, 
                                          @CreatedDate      DATETIME       = NULL, 
                                          @CreatedBy        INT            = NULL
AS
     INSERT INTO [MAC].[Electronic]
     ([ElectronicCode], 
      [ElectronicTypeId], 
      [ProjectCode], 
      [Brand], 
      [Model], 
      [Size], 
      [Color], 
      [Specification], 
      [SerialNumber], 
      [Active], 
      [Status], 
      [RunningNo], 
      [BuyDate], 
      [Price], 
      [EstimatedPrice], 
      [Amount], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ElectronicCode, 
      @ElectronicTypeId, 
      @ProjectCode, 
      @Brand, 
      @Model, 
      @Size, 
      @Color, 
      @Specification, 
      @SerialNumber, 
      @Active, 
      @Status, 
      @RunningNo, 
      @BuyDate, 
      @Price, 
      @EstimatedPrice, 
      @Amount, 
      @CreatedDate, 
      @CreatedBy
     );
GO
