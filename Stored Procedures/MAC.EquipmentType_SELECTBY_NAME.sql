SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentType_SELECTBY_NAME] @EquipmentTypeCode VARCHAR(5)    = NULL, 
                                                    @EquipmentTypeName NVARCHAR(255) = NULL,
													@Type			   INT			 = NULL
AS
     SELECT *
     FROM EquipmentType
     WHERE(REPLACE(RTRIM(LTRIM(EquipmentTypeCode)), ' ', '') LIKE REPLACE(RTRIM(LTRIM(@EquipmentTypeCode)), ' ', '')
           OR @EquipmentTypeCode IS NULL)
          AND (REPLACE(RTRIM(LTRIM(EquipmentTypeName)), ' ', '') LIKE REPLACE(RTRIM(LTRIM(@EquipmentTypeName)), ' ', '')
               OR @EquipmentTypeName IS NULL)
		  AND (Type = @Type OR @Type IS NULL)
GO
