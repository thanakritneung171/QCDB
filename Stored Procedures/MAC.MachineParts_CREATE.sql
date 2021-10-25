SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineParts_CREATE] @MachineCode     NVARCHAR(10)  = NULL, 
                                             @MachinePartName NVARCHAR(250) = NULL
AS
     INSERT INTO [MAC].[MachineParts]
     ([MachineCode], 
      [MachinePartName]
     )
     VALUES
     (@MachineCode, 
      @MachinePartName
     );
GO
