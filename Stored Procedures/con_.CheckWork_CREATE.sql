SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWork_CREATE] @ProjectCode            NVARCHAR(10) = NULL, 
                                          @HouseId                INT          = NULL, 
                                          @WorkId                 INT          = NULL, 
                                          @WorkPriceId            INT          = NULL, 
                                          @UnitNumber             NVARCHAR(30) = NULL, 
                                          @QCPass                 BIT          = NULL, 
                                          @Amount                 NCHAR(10)    = NULL, 
                                          @LastModifiedQCPassDate DATETIME     = NULL, 
                                          @LastModifiedQCPassBy   INT          = NULL, 
                                          @LastModifiedAmountDate DATETIME     = NULL, 
                                          @LastModifiedAmountBy   INT          = NULL
AS

	DECLARE @Id INT SET @Id = ISNULL((SELECT TOP 1 Id FROM [con].[CheckWork] ORDER BY Id DESC),0) + 1

	WHILE ((SELECT COUNT(*) FROM [con].[CheckWork] WHERE Id = @Id) > 0)
		BEGIN
			SET @Id = ISNULL((SELECT TOP 1 Id FROM [con].[CheckWork] ORDER BY Id DESC),0) + 1
		END

     INSERT INTO [con].[CheckWork]
     (
	  [Id],
	  [ProjectCode], 
      [HouseId], 
      [WorkId], 
      [WorkPriceId], 
      [UnitNumber], 
      [QCPass], 
      [Amount], 
      [LastModifiedQCPassDate], 
      [LastModifiedQCPassBy], 
      [LastModifiedAmountDate], 
      [LastModifiedAmountBy]
     )
     VALUES
     (@Id,
	  @ProjectCode, 
      @HouseId, 
      @WorkId, 
      @WorkPriceId, 
      @UnitNumber, 
      @QCPass, 
      @Amount, 
      @LastModifiedQCPassDate, 
      @LastModifiedQCPassBy, 
      @LastModifiedAmountDate, 
      @LastModifiedAmountBy
     );

GO
