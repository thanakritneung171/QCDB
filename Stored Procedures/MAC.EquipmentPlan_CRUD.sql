SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPlan_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                           @EquipmentPlanId      INT           = NULL, 
                                           @EquipmentPlanName    NVARCHAR(255) = NULL, 
                                           @Number               INT           = NULL, 
                                           @Type                 INT           = NULL, 
                                           @Active               INT           = NULL, 
                                           @CreatedDate          DATETIME      = NULL, 
                                           @CreatedBy            INT           = NULL, 
                                           @ModifiedDate         DATETIME      = NULL, 
                                           @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[EquipmentPlan_Create] 
                     @EquipmentPlanName, 
                     @Number, 
                     @Type, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[EquipmentPlan_UPDATE] 
                     @EquipmentPlanId, 
                     @EquipmentPlanName, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[EquipmentPlan_READ_BY] 
                     @EquipmentPlanId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[EquipmentPlan_SELECT] 
                     @Type;
        END;
    END;
        SET ANSI_NULLS ON;
GO
