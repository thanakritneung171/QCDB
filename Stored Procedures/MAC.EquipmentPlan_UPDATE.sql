SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPlan_UPDATE] @EquipmentPlanId   INT           = NULL, 
                                              @EquipmentPlanName NVARCHAR(255) = NULL, 
                                              @Active            BIT           = NULL, 
                                              @ModifiedDate      DATETIME      = NULL, 
                                              @ModifiedBy        INT           = NULL
AS
     UPDATE [MAC].[EquipmentPlan]
       SET 
           EquipmentPlanName = @EquipmentPlanName, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE EquipmentPlanId = @EquipmentPlanId;
GO
