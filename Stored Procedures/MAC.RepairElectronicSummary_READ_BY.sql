SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummary_READ_BY] @Id INT
AS
     SELECT *
     FROM [MAC].[RepairElectronicSummary]
     WHERE Id = @Id;
GO
