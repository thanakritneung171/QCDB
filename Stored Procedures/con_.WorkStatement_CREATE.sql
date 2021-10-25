SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_CREATE] @ProjectTypeId      INT           = NULL, 
                                              @WorkGroupMainId    INT           = NULL, 
                                              @WorkGroupId        INT           = NULL, 
                                              @WorkId             INT           = NULL, 
                                              @WorkName           NVARCHAR(255) = NULL, 
                                              @Number             INT           = NULL, 
                                              @WorkUnit           INT           = NULL, 
                                              @QCPassBeforePay    BIT           = NULL, 
                                              @SetAmountBeforePay BIT           = NULL, 
											  @IsNoPrice          BIT           = NULL, 
                                              @WorkAmountWeight   INT           = NULL, 
                                              @Note               NVARCHAR(255) = NULL, 
                                              @Status             INT           = NULL, 
                                              @Active             BIT           = NULL, 
                                              @IsCurrent          BIT           = NULL, 
                                              @CreatedDate        DATETIME      = NULL, 
                                              @CreatedBy          INT           = NULL
AS
     DECLARE @LastNumber INT;
     SET @LastNumber = 0;
     IF(
     (
         SELECT COUNT(*)
         FROM [con].[WorkStatement]
         WHERE WorkGroupId = @WorkGroupId
     ) > 0
     AND @Number IS NULL)
         SET @LastNumber =
         (
             SELECT TOP 1 Number
             FROM [con].[WorkStatement]
             WHERE WorkGroupId = @WorkGroupId
             ORDER BY Number DESC
         );
     INSERT INTO [con].[WorkStatement]
     ([ProjectTypeId], 
      [WorkGroupMainId], 
      [WorkGroupId], 
      [WorkId], 
      [WorkName], 
      [Number], 
      [WorkUnit], 
      [QCPassBeforePay], 
      [SetAmountBeforePay], 
	  [IsNoPrice],
      [WorkAmountWeight], 
      [Note], 
      [Status], 
      [Active], 
      [IsCurrent], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ProjectTypeId, 
      @WorkGroupMainId, 
      @WorkGroupId, 
      @WorkId, 
      @WorkName,
      CASE
          WHEN @Number IS NOT NULL
          THEN @Number
          ELSE @LastNumber + 1
      END, 
      @WorkUnit, 
      @QCPassBeforePay, 
      @SetAmountBeforePay, 
	  @IsNoPrice,
      @WorkAmountWeight, 
      @Note, 
      @Status, 
      @Active, 
      @IsCurrent, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;





GO
