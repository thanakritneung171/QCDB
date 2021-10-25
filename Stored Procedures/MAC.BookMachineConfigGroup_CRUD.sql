SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigGroup_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                    @Id                   INT, 
                                                    @BookMachineConfigId  INT, 
                                                    @MachineCode          NVARCHAR(10), 
                                                    @DriverId             INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[BookMachineConfigGroup_Create] 
                     @BookMachineConfigId, 
                     @MachineCode, 
                     @DriverId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[BookMachineConfigGroup_DELETE] 
                     @BookMachineConfigId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[BookMachineConfigGroup_SELECT] 
                     @BookMachineConfigId, 
                     @MachineCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
