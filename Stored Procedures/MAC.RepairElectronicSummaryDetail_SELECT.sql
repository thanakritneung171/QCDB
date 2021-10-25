SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummaryDetail_SELECT] @RepairElectronicSummaryId INT = NULL
AS
     SELECT *
     FROM [MAC].[RepairElectronicSummaryDetail]
     WHERE RepairElectronicSummaryId = @RepairElectronicSummaryId;
GO
