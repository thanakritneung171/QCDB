SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroup_SELECT] @ProjectTypeId   INT, 
                                         @WorkGroupMainId INT, 
                                         @Active          BIT, 
                                         @IsOtherWork     BIT
AS
     SELECT *
     FROM [con].[WorkGroup]
     WHERE(WorkGroupMainId = @WorkGroupMainId
           OR @WorkGroupMainId IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
          AND (ProjectTypeId = @ProjectTypeId
               OR @ProjectTypeId IS NULL)
         AND ((@IsOtherWork IS NULL AND (IsOtherWork IS NULL OR IsOtherWork = 0)) OR @IsOtherWork IS NOT NULL)
GO
