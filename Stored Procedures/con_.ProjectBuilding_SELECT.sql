SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectBuilding_SELECT] @BuildingType INT          = NULL, 
                                               @BuildingName NVARCHAR(10) = NULL, 
                                               @Active       BIT          = NULL
AS
     SELECT *
     FROM [con].[ProjectBuilding]
     WHERE(Active = @Active
           OR @Active IS NULL)
          AND (BuildingName = @BuildingName
               OR @BuildingName IS NULL)
          AND (BuildingType = @BuildingType
               OR @BuildingType IS NULL);
GO
