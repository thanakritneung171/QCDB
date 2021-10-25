SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectBuilding_CREATE] @BuildingType INT       = NULL, 
                                                @BuildingName NVARCHAR(50) = NULL, 
                                                @Active       BIT       = NULL, 
                                                @CreatedDate  DATETIME  = NULL, 
                                                @CreatedBy    INT       = NULL
AS
     INSERT INTO [con].[ProjectBuilding]
     (
	  BuildingType, 
      BuildingName, 
      Active, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@BuildingType, 
      @BuildingName, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
GO
