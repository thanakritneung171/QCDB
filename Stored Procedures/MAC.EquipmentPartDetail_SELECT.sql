SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPartDetail_SELECT] @EquipmentId INT = NULL
AS
     SELECT *
     FROM EquipmentPartDetail
     WHERE EquipmentId = @EquipmentId;
GO
