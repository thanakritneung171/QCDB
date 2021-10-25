SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWorkStatement_CREATE] @ProjectCode NVARCHAR(10)   = NULL, 
                                                   @HouseId     INT            = NULL, 
                                                   @WorkId      INT            = NULL, 
                                                   @WorkPriceId INT            = NULL, 
                                                   @UnitNumber  NVARCHAR(30)   = NULL, 
                                                   @QCPass      BIT            = NULL, 
												   @OldAmount            DECIMAL(10, 2)  = NULL, 
                                                   @Amount      DECIMAL(10, 2)  = NULL, 
                                                   @Type        INT            = NULL, 
                                                   @CreatedDate DATETIME       = NULL, 
                                                   @CreatedBy   INT            = NULL
AS
     INSERT INTO [con].[CheckWorkStatement]
     ([ProjectCode], 
      [HouseId], 
      [WorkId], 
      [WorkPriceId], 
      [UnitNumber], 
      [QCPass], 
	  [OldAmount],
      [Amount], 
      [Type], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ProjectCode, 
      @HouseId, 
      @WorkId, 
      @WorkPriceId, 
      @UnitNumber, 
      @QCPass, 
	  @OldAmount,
      @Amount, 
      @Type, 
      @CreatedDate, 
      @CreatedBy
     );

GO
