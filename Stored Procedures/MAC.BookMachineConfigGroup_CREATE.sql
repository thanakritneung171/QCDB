SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigGroup_CREATE] @BookMachineConfigId INT, 
                                                       @MachineCode         NVARCHAR(10), 
                                                       @DriverId            INT
AS
     INSERT INTO [MAC].[BookMachineConfigGroup]
     ([BookMachineConfigId], 
      [MachineCode], 
      [DriverId]
     )
     VALUES
     (@BookMachineConfigId, 
      @MachineCode, 
      @DriverId
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
