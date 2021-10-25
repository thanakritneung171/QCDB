SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineParts_SELECT] @MachineCode     NVARCHAR(10)  = NULL
AS
     SELECT *
     FROM [MAC].[MachineParts]
     WHERE MachineCode = @MachineCode
GO
