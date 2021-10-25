SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineType_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                         @MachineTypeId        INT           = NULL, 
                                         @MachineTypeCode      NVARCHAR(10)  = NULL, 
                                         @MachineTypeName      NVARCHAR(250) = NULL, 
                                         @Active               BIT           = NULL, 
                                         @CreatedDate          DATETIME      = NULL, 
                                         @CreatedBy            INT           = NULL, 
                                         @ModifiedDate         DATETIME      = NULL, 
                                         @ModifieBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[MachineType_Create] 
                     @MachineTypeCode, 
                     @MachineTypeName, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[MachineType_UPDATE] 
				     @MachineTypeId,
                     @MachineTypeCode, 
                     @MachineTypeName, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifieBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[MachineType_READ_BY] 
                     @MachineTypeId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[MachineType_SELECT] 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
