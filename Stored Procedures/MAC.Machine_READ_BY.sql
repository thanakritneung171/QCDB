SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Machine_READ_BY] @MachineCode NVARCHAR(50) = NULL
AS
     SELECT *, m.MachineName  as MachineName , (SELECT TOP 1 _p.NameTH FROM KKN_Sale.dbo.T_Projects _p WHERE _p.PCode = m.ProjectCode ) as ProjectName
     FROM [MAC].[Machine] m
	 JOIN [MAC].[MachineType] t on m.MachineTypeId = t.MachineTypeId 
     WHERE m.MachineCode = @MachineCode;

GO
