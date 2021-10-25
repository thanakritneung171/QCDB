SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroup_CREATE] @ProjectTypeId   INT, 
                                          @WorkGroupMainId INT           = NULL, 
                                          @WorkGroupName   NVARCHAR(255) = NULL, 
                                          @Number          INT           = NULL, 
                                          @Status          INT           = NULL, 
                                          @Active          BIT           = NULL, 
                                          @CreatedDate     DATETIME      = NULL, 
                                          @CreatedBy       INT           = NULL
AS
     DECLARE @LastNumber INT;
     SET @LastNumber = 0;
     IF(
     (
         SELECT COUNT(*)
         FROM [con].[WorkGroup]
         WHERE WorkGroupMainId = @WorkGroupMainId
     ) > 0)
         SET @LastNumber =
         (
             SELECT TOP 1 Number
             FROM [con].[WorkGroup]
             WHERE WorkGroupMainId = @WorkGroupMainId
             ORDER BY Number DESC
         );
     INSERT INTO [con].[WorkGroup]
     ([ProjectTypeId], 
      [WorkGroupMainId], 
      [WorkGroupName], 
      [Number], 
      [Status], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ProjectTypeId, 
      @WorkGroupMainId, 
      @WorkGroupName,
      CASE
          WHEN @Number IS NOT NULL
          THEN @Number
          ELSE @LastNumber + 1
      END, 
      @Status, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;





GO
