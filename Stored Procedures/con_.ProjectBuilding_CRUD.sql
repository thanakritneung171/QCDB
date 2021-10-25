SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectBuilding_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                             @Id                   INT           = NULL, 
                                             @BuildingType         INT           = NULL, 
                                             @BuildingName         NVARCHAR(50)  = NULL, 
                                             @Active               BIT           = NULL, 
                                             @CreatedDate          DATETIME      = NULL, 
                                             @CreatedBy            INT           = NULL, 
                                             @ModifiedDate         DATETIME      = NULL, 
                                             @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectBuilding_CREATE] 
                     @BuildingType, 
                     @BuildingName, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectBuilding_UPDATE] 
                     @Id, 
                     @BuildingType, 
                     @BuildingName, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectBuilding_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectBuilding_SELECT] 
                     @BuildingType, 
                     @BuildingName, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
