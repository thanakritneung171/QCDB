SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPlan_SELECT] @Type INT = NULL
AS
     SELECT *
     FROM EquipmentPlan
     WHERE(Type = @Type
           OR @Type IS NULL);
GO
