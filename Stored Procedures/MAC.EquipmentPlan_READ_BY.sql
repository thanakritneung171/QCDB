SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPlan_READ_BY] @EquipmentPlanId INT = NULL
AS
     SELECT *
     FROM EquipmentPlan
     WHERE EquipmentPlanId = @EquipmentPlanId;
GO
