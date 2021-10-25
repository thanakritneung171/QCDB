SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPartDetail_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                 @Id                   INT            = NULL, 
                                                 @EquipmentId          INT            = NULL, 
                                                 @Number               INT            = NULL, 
                                                 @PartName             NVARCHAR(255)  = NULL, 
                                                 @Amount               DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[EquipmentPartDetail_Create] 
                     @EquipmentId, 
                     @Number, 
                     @PartName, 
                     @Amount;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[EquipmentPartDetail_DELETE] 
                     @EquipmentId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[EquipmentPartDetail_SELECT] 
                     @EquipmentId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
