SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Machine_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                     @MachineCode          NVARCHAR(50)   = NULL, 
                                     @MachineTypeId        INT            = NULL, 
                                     @Number               INT            = NULL, 
                                     @ProjectCode          NVARCHAR(50)   = NULL, 
                                     @MachineName          NVARCHAR(250)  = NULL, 
                                     @Brand                NVARCHAR(250)  = NULL, 
                                     @Model                NVARCHAR(250)  = NULL, 
                                     @Specification        NVARCHAR(MAX)  = NULL, 
                                     @MachineSerial        NVARCHAR(250)  = NULL, 
                                     @Active               BIT            = NULL, 
                                     @Note                 NVARCHAR(MAX)  = NULL, 
                                     @Status               INT            = NULL, 
                                     @BuyDate              DATETIME       = NULL, 
                                     @MachinePrice         DECIMAL(10, 2)  = NULL, 
                                     @StartDate            DATETIME       = NULL, 
                                     @CreatedDate          DATETIME       = NULL, 
                                     @CreatedBy            INT            = NULL, 
                                     @ModifiedDate         DATETIME       = NULL, 
                                     @ModifiedBy           INT            = NULL, 
                                     @SearchMachine        NVARCHAR(MAX)  = NULL, 
                                     @NoUpdateMachine      BIT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[Machine_Create] 
                     @MachineCode, 
                     @MachineTypeId, 
                     @Number, 
                     @ProjectCode, 
                     @MachineName, 
                     @Brand, 
                     @Model, 
                     @Specification, 
                     @MachineSerial, 
                     @Active, 
                     @Note, 
                     @Status, 
                     @BuyDate, 
                     @MachinePrice, 
                     @StartDate, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @NoUpdateMachine;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[Machine_UPDATE] 
                     @MachineCode, 
                     @MachineTypeId, 
                     @Number, 
                     @ProjectCode, 
                     @MachineName, 
                     @Brand, 
                     @Model, 
                     @Specification, 
                     @MachineSerial, 
                     @Active, 
                     @Note, 
                     @Status, 
                     @BuyDate, 
                     @MachinePrice, 
                     @StartDate, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @NoUpdateMachine;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[Machine_READ_BY] 
                     @MachineCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[Machine_SELECT] 
                     @SearchMachine, 
                     @ProjectCode, 
                     @MachineTypeId, 
                     @Active, 
                     @Status, 
                     @MachineName;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[Machine_DELETE] 
                     @MachineCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
