SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectBuilding_UPDATE] @Id           INT       = NULL, 
                                                @BuildingType INT       = NULL, 
                                                @BuildingName NVARCHAR(10) = NULL, 
                                                @Active       BIT       = NULL, 
                                                @ModifiedDate DATETIME  = NULL, 
                                                @ModifiedBy   INT       = NULL
AS
     UPDATE [con].[ProjectBuilding]
       SET 
           @BuildingType = @BuildingType, 
           @BuildingName = @BuildingName, 
           @Active = @Active, 
           @ModifiedDate = @ModifiedDate, 
           @ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
