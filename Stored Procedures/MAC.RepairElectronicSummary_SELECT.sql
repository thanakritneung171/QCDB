SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummary_SELECT] @RepairElectronicCode NVARCHAR(10)
AS
     SELECT *
     FROM [MAC].[RepairElectronicSummary]
     WHERE RepairElectronicCode = @RepairElectronicCode;
GO
