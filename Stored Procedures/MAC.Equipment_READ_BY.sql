SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_READ_BY] @EquipmentId   INT         = NULL, 
                                          @EquipmentCode VARCHAR(10) = NULL, 
                                          @Type          INT         = NULL
AS
     SELECT *
     FROM Equipment
     WHERE(EquipmentId = @EquipmentId
           OR @EquipmentId IS NULL)
          AND (EquipmentCode = @EquipmentCode
               OR @EquipmentCode IS NULL)
          AND (Type = @Type
               OR @Type IS NULL);
GO
