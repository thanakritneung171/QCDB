SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentType_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                           @EquipmentTypeId      INT           = NULL, 
                                           @EquipmentTypeCode    VARCHAR(5)    = NULL, 
                                           @EquipmentTypeName    NVARCHAR(255) = NULL, 
                                           @Type                 INT           = NULL, 
                                           @Active               BIT           = NULL, 
                                           @CreatedDate          DATETIME      = NULL, 
                                           @CreatedBy            INT           = NULL, 
                                           @ModifiedDate         DATETIME      = NULL, 
                                           @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[EquipmentType_Create] 
                     @EquipmentTypeCode, 
                     @EquipmentTypeName, 
                     @Type, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[EquipmentType_UPDATE] 
                     @EquipmentTypeId, 
                     @EquipmentTypeCode, 
                     @EquipmentTypeName, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[EquipmentType_READ_BY] 
                     @EquipmentTypeId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[EquipmentType_SELECT] 
                     @Type;
        END;
        IF @Control_Character_In = 'selectByName'
            BEGIN
                EXEC [MAC].[EquipmentType_SELECTBY_NAME] 
                     @EquipmentTypeCode, 
                     @EquipmentTypeName;
        END;
    END;
        SET ANSI_NULLS ON;
GO
