SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Work_SELECT] @ProjectTypeId   INT           = NULL, 
                                    @WorkGroupMainId INT           = NULL, 
                                    @WorkGroupId     INT           = NULL, 
                                    @Active          BIT           = NULL, 
                                    @SearchWorkName  NVARCHAR(MAX) = NULL, 
                                    @IsOtherWork     BIT           = NULL
AS
     SELECT *
     FROM [con].[Work]
     WHERE(ProjectTypeId = @ProjectTypeId
           OR @ProjectTypeId IS NULL)
          AND (WorkGroupMainId = @WorkGroupMainId
               OR @WorkGroupMainId IS NULL)
          AND (WorkGroupId = @WorkGroupId
               OR @WorkGroupId IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
          AND (WorkName LIKE N'%' + @SearchWorkName + '%'
               OR @SearchWorkName IS NULL)
          AND ((@IsOtherWork IS NULL AND (IsOtherWork IS NULL OR IsOtherWork = 0)) OR @IsOtherWork IS NOT NULL)
GO
