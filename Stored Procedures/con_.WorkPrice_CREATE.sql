SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkPrice_CREATE] @ProjectTypeId INT            = NULL, 
                                         @WorkId        INT            = NULL, 
                                         @HouseId       INT            = NULL, 
                                         @ProjectCode   NVARCHAR(10)   = NULL, 
                                         @Price         DECIMAL(10, 2)  = NULL, 
                                         @OldPrice      DECIMAL(10, 2)  = NULL, 
                                         @ModifiedDate  DATETIME       = NULL, 
                                         @ModifiedBy    INT            = NULL, 
                                         @TotalPrice    DECIMAL(10, 2)  = NULL, 
                                         @WHT           DECIMAL(10, 2)  = NULL, 
                                         @VATType       INT            = NULL, 
                                         @VAT           DECIMAL(10, 2)  = NULL, 
                                         @NetPrice      DECIMAL(10, 2)  = NULL, 
                                         @OldNetPrice   DECIMAL(10, 2)  = NULL
AS
     DECLARE @Id INT;
     SET @Id = ISNULL(
     (
         SELECT TOP 1 Id
         FROM [con].[WorkPrice]
         ORDER BY Id DESC
     ), 0) + 1;
     WHILE(
     (
         SELECT COUNT(*)
         FROM [con].[WorkPrice]
         WHERE Id = @Id
     ) > 0)
         BEGIN
             SET @Id = ISNULL(
             (
                 SELECT TOP 1 Id
                 FROM [con].[WorkPrice]
                 ORDER BY Id DESC
             ), 0) + 1;
         END;
     INSERT INTO [con].[WorkPrice]
     ([Id], 
      [ProjectTypeId], 
      [WorkId], 
      [HouseId], 
      [ProjectCode], 
      [Price], 
      [OldPrice], 
      [ModifiedDate], 
      [ModifiedBy], 
      [TotalPrice], 
      [WHT], 
      [VATType], 
      [VAT], 
      [NetPrice], 
      [OldNetPrice]
     )
     VALUES
     (@Id, 
      @ProjectTypeId, 
      @WorkId, 
      @HouseId, 
      @ProjectCode, 
      @Price, 
      @OldPrice, 
      @ModifiedDate, 
      @ModifiedBy, 
      @TotalPrice, 
      @WHT, 
      @VATType, 
      @VAT, 
      @NetPrice, 
      @OldNetPrice
     );
     SELECT @Id AS Id;
GO
