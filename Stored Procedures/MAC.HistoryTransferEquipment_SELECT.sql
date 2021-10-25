SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferEquipment_SELECT] @EquipmentId INT = NULL
AS
     SELECT *
     FROM HistoryTransferEquipment
	 WHERE EquipmentId = @EquipmentId
GO
