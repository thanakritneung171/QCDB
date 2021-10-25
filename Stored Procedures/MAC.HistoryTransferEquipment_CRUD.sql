SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferEquipment_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                       @Id                   INT           = NULL, 
                                                       @EquipmentId          INT           = NULL, 
                                                       @EquipmentName        NVARCHAR(255) = NULL, 
                                                       @OldProjectCode       VARCHAR(50)   = NULL, 
                                                       @NewProjectCode       VARCHAR(50)   = NULL, 
                                                       @Note                 NVARCHAR(255) = NULL, 
                                                       @TransferDate          DATETIME      = NULL, 
                                                       @TransferBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[HistoryTransferEquipment_Create] 
                     @EquipmentId, 
                     @EquipmentName, 
                     @OldProjectCode, 
                     @NewProjectCode, 
                     @Note, 
                     @TransferDate, 
                     @TransferBy;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[HistoryTransferEquipment_SELECT] 
                     @EquipmentId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
