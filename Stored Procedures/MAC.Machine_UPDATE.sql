SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Machine_UPDATE] @MachineCode     NVARCHAR(50)   = NULL, 
                                       @MachineTypeId   INT            = NULL, 
                                       @Number          INT            = NULL, 
                                       @ProjectCode     NVARCHAR(50)   = NULL, 
                                       @MachineName     NVARCHAR(250)  = NULL, 
                                       @Brand           NVARCHAR(250)  = NULL, 
                                       @Model           NVARCHAR(250)  = NULL, 
                                       @Specification   NVARCHAR(MAX)  = NULL, 
                                       @MachineSerial   NVARCHAR(250)  = NULL, 
                                       @Active          BIT            = NULL, 
                                       @Note            NVARCHAR(MAX)  = NULL, 
                                       @Status          INT            = NULL, 
                                       @BuyDate         DATETIME       = NULL, 
                                       @MachinePrice    DECIMAL(10, 2)  = NULL, 
                                       @StartDate       DATETIME       = NULL, 
                                       @ModifiedDate    DATETIME       = NULL, 
                                       @ModifiedBy      INT            = NULL, 
                                       @NoUpdateMachine BIT            = NULL
AS
     UPDATE [MAC].[Machine]
       SET 
           [MachineTypeId] = @MachineTypeId, 
           [Number] = @Number, 
           [ProjectCode] = @ProjectCode, 
           [MachineName] = @MachineName, 
           [Brand] = @Brand, 
           [Model] = @Model, 
           [Specification] = @Specification, 
           [MachineSerial] = @MachineSerial, 
           [Active] = @Active, 
           [Note] = @Note, 
           [Status] = @Status, 
           [BuyDate] = @BuyDate, 
           [MachinePrice] = @MachinePrice, 
           [StartDate] = @StartDate, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [NoUpdateMachine] = @NoUpdateMachine
     WHERE MachineCode = @MachineCode;
GO
