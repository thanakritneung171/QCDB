SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Machine_CREATE] @MachineCode     NVARCHAR(50)   = NULL, 
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
                                       @CreatedDate     DATETIME       = NULL, 
                                       @CreatedBy       INT            = NULL, 
                                       @NoUpdateMachine BIT            = NULL
AS
     INSERT INTO [MAC].[Machine]
     ([MachineCode], 
      [MachineTypeId], 
      [Number], 
      [ProjectCode], 
      [MachineName], 
      [Brand], 
      [Model], 
      [Specification], 
      [MachineSerial], 
      [Active], 
      [Note], 
      [Status], 
      [BuyDate], 
      [MachinePrice], 
      [StartDate], 
      [CreatedDate], 
      [CreatedBy], 
      [NoUpdateMachine]
     )
     VALUES
     (@MachineCode, 
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
      @NoUpdateMachine
     );
     SELECT SCOPE_IDENTITY() AS MachineTypeId;
GO
