SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_SELECT] @EquipmentTypeId INT         = NULL, 
                                         @EquipmentPlanId INT         = NULL, 
                                         @Type            INT         = NULL, 
                                         @ProjectCode     VARCHAR(10) = NULL, 
                                         @Active          BIT         = NULL
AS
     SELECT *
     FROM Equipment
     WHERE(EquipmentTypeId = @EquipmentTypeId
           OR @EquipmentTypeId IS NULL)
          AND (EquipmentPlanId = @EquipmentPlanId
               OR @EquipmentPlanId IS NULL)
          AND (ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL
               OR @ProjectCode = '')
          AND (Active = @Active
               OR @Active IS NULL)
          AND (Type = @Type
               OR @Type IS NULL);
GO
