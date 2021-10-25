SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_SELECTBY_NAME] @EquipmentTypeId INT           = NULL, 
                                                 @EquipmentName   NVARCHAR(255) = NULL, 
                                                 @Type            INT           = NULL
AS
     SELECT *
     FROM Equipment
     WHERE (EquipmentTypeId = @EquipmentTypeId OR @EquipmentTypeId IS NULL)
           AND (REPLACE(RTRIM(LTRIM(EquipmentName)), ' ', '') LIKE REPLACE(RTRIM(LTRIM(@EquipmentName)), ' ', '')
                OR @EquipmentName IS NULL)
		   AND (Type = @Type OR @Type IS NULL)
GO
