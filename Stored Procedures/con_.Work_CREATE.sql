SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Work_CREATE] @ProjectTypeId    INT      = NULL, 
                                     @WorkGroupMainId  INT      = NULL, 
                                     @WorkGroupId      INT      = NULL,
									 @Number		   INT		= NULL, 
                                     @LastModifiedDate DATETIME = NULL, 
                                     @LastModifiedBy   INT      = NULL
AS
	DECLARE @Id INT SET @Id = ISNULL((SELECT TOP 1 Id FROM [con].[Work] ORDER BY Id DESC),0) + 1

	WHILE ((SELECT COUNT(*) FROM [con].[Work] WHERE Id = @Id) > 0)
		BEGIN
			SET @Id = ISNULL((SELECT TOP 1 Id FROM [con].[Work] ORDER BY Id DESC),0) + 1
		END

     INSERT INTO [con].[Work]
     (
	  [Id],
	  [ProjectTypeId], 
      [WorkGroupMainId], 
      [WorkGroupId], 
	  [Number],
      [Active], 
      [LastModifiedDate], 
      [LastModifiedBy]
     )
     VALUES
     (@Id,
	  @ProjectTypeId, 
      @WorkGroupMainId, 
      @WorkGroupId, 
	  @Number,
      0, 
      @LastModifiedDate, 
      @LastModifiedBy
     );

     SELECT @Id AS Id;




GO
