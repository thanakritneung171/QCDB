SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigInProject_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                  @BookMachineConfigId        INT, 
                                                  @ProjectCode          NVARCHAR(10)
AS
    BEGIN
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[BookMachineConfigInProject_SELECT] 
                     @BookMachineConfigId,
					 @ProjectCode
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[BookMachineConfigInProject_DELETE] 
                     @BookMachineConfigId;
        END;
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[BookMachineConfigInProject_CREATE] 
                     @BookMachineConfigId, 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
