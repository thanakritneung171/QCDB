SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentType_READ_BY] @EquipmentTypeId INT = NULL
AS
     SELECT *
     FROM EquipmentType
     WHERE EquipmentTypeId = @EquipmentTypeId;
GO
