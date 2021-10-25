SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPartDetail_DELETE] @EquipmentId INT = NULL
AS
     DELETE EquipmentPartDetail
     WHERE EquipmentId = @EquipmentId;
GO
