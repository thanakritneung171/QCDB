SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                       @EquipmentId          INT           = NULL, 
                                       @EquipmentCode        VARCHAR(10)   = NULL, 
                                       @RunningNo            INT           = NULL, 
                                       @EquipmentTypeId      INT           = NULL, 
                                       @RunningNoType        INT           = NULL, 
                                       @EquipmentPlanId      INT           = NULL, 
                                       @Type                 INT           = NULL, 
                                       @ProjectCode          VARCHAR(10)   = NULL, 
                                       @EquipmentName        NVARCHAR(255) = NULL, 
                                       @EquipmentDescription NVARCHAR(MAX) = NULL, 
                                       @Status               INT           = NULL, 
                                       @Active               BIT           = NULL, 
                                       @CreatedDate          DATETIME      = NULL, 
                                       @CreatedBy            INT           = NULL, 
                                       @ModifiedDate         DATETIME      = NULL, 
                                       @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[Equipment_Create] 
                     @EquipmentCode, 
                     @RunningNo, 
                     @EquipmentTypeId, 
                     @RunningNoType, 
                     @EquipmentPlanId, 
                     @Type, 
                     @ProjectCode, 
                     @EquipmentName, 
                     @EquipmentDescription, 
                     @Status, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[Equipment_UPDATE] 
                     @EquipmentId, 
                     @EquipmentCode, 
                     @RunningNo, 
                     @EquipmentTypeId, 
                     @EquipmentPlanId, 
                     @ProjectCode, 
                     @EquipmentName, 
                     @EquipmentDescription, 
                     @Status, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[Equipment_DELETE] 
                     @EquipmentId;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[Equipment_READ_BY] 
                     @EquipmentId, 
                     @EquipmentCode, 
                     @Type;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[Equipment_SELECT] 
                     @EquipmentTypeId, 
                     @EquipmentPlanId, 
                     @Type, 
                     @ProjectCode, 
                     @Active;
        END;
        IF @Control_Character_In = 'selectByName'
            BEGIN
                EXEC [MAC].[Equipment_SELECTBY_NAME] 
                     @EquipmentTypeId, 
                     @EquipmentName;
        END;
    END;
        SET ANSI_NULLS ON;
GO
