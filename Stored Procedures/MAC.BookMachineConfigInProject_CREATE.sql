SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfigInProject_CREATE] @BookMachineConfigId INT, 
                                                          @ProjectCode         NVARCHAR(10)
AS
     INSERT INTO [MAC].[BookMachineConfigInProject]
     (BookMachineConfigId, 
      ProjectCode
     )
     VALUES
     (@BookMachineConfigId, 
      @ProjectCode
     );
GO
