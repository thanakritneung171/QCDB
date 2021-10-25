SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineType_UPDATE] @MachineTypeId   INT           = NULL, 
                                            @MachineTypeCode NVARCHAR(10)  = NULL, 
                                            @MachineTypeName NVARCHAR(250) = NULL, 
                                            @Active          BIT           = NULL, 
                                            @ModifiedDate    DATETIME      = NULL, 
                                            @ModifieBy       INT           = NULL
AS
     UPDATE [MAC].[MachineType]
       SET 
           [MachineTypeCode] = @MachineTypeCode, 
           [MachineTypeName] = @MachineTypeName, 
           [Active] = @Active, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifieBy] = @ModifieBy
     WHERE MachineTypeId = @MachineTypeId;
GO
