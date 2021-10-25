SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Project_SELECT] @ProjectName NVARCHAR(100) = NULL, 
                                       @ComCode     VARCHAR(5)    = NULL, 
                                       @Active      BIT           = NULL
AS
     SELECT *
     FROM [con].[Project]
     WHERE(ProjectName = @ProjectName
           OR @ProjectName IS NULL)
          AND (ComCode = @ComCode
               OR @ComCode IS NULL)
          AND (Active = @Active
               OR @Active IS NULL);
GO
