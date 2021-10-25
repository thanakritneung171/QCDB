SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentType_UPDATE] @EquipmentTypeId   INT           = NULL, 
                                             @EquipmentTypeCode VARCHAR(5)    = NULL, 
                                             @EquipmentTypeName NVARCHAR(255) = NULL, 
                                             @Active            BIT           = NULL,  
                                             @ModifiedDate      DATETIME      = NULL, 
                                             @ModifiedBy        INT           = NULL
AS
     UPDATE [MAC].[EquipmentType]
       SET 
           EquipmentTypeCode = @EquipmentTypeCode, 
           EquipmentTypeName = @EquipmentTypeName, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE EquipmentTypeId = @EquipmentTypeId;
GO
