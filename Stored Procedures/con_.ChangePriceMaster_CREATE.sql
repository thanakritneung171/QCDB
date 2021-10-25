SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_CREATE] @ProjectTypeId INT            = NULL, 
                                                 @WorkId        INT            = NULL, 
                                                 @HouseId       INT            = NULL, 
                                                 @ProjectCode   NVARCHAR(10)   = NULL, 
                                                 @Type          INT            = NULL, 
                                                 @Price         DECIMAL(10, 2)  = NULL, 
                                                 @Note          NVARCHAR(MAX)  = NULL, 
                                                 @Status        INT            = NULL, 
                                                 @CreatedDate   DATETIME       = NULL, 
                                                 @CreatedBy     INT            = NULL, 
                                                 @TotalPrice    DECIMAL(10, 2)  = NULL, 
                                                 @WHT           DECIMAL(10, 2)  = NULL, 
                                                 @VATType       INT            = NULL, 
                                                 @VAT           DECIMAL(10, 2)  = NULL, 
                                                 @NetPrice      DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [con].[ChangePriceMaster]
     ([ProjectTypeId], 
      [WorkId], 
      [HouseId], 
      [ProjectCode], 
      [Type], 
      [Price], 
      [Note], 
      [Status], 
      [CreatedDate], 
      [CreatedBy], 
      [TotalPrice], 
      [WHT], 
      [VATType], 
      [VAT], 
      [NetPrice]
     )
     VALUES
     (@ProjectTypeId, 
      @WorkId, 
      @HouseId, 
      @ProjectCode, 
      @Type, 
      @Price, 
      @Note, 
      @Status, 
      @CreatedDate, 
      @CreatedBy, 
      @TotalPrice, 
      @WHT, 
      @VATType, 
      @VAT, 
      @NetPrice
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
