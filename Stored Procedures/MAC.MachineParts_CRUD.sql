SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineParts_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                         @MachineCode          NVARCHAR(10)  = NULL, 
                                         @MachinePartName      NVARCHAR(250) = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[MachineParts_Create] 
                     @MachineCode, 
                     @MachinePartName;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[MachineParts_SELECT] 
                     @MachineCode;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[MachineParts_DELETE] 
                     @MachineCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
