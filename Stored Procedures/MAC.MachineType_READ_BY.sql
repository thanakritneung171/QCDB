SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineType_READ_BY] @MachineTypeId INT = NULL
AS
     SELECT *
     FROM [MAC].[MachineType]
     WHERE MachineTypeId = @MachineTypeId;
GO
