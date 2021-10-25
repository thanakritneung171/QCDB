SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummaryDetail_DELETE] @RepairElectronicSummaryId INT = NULL
AS
     DELETE [MAC].[RepairElectronicSummaryDetail]
     WHERE RepairElectronicSummaryId = @RepairElectronicSummaryId;
GO
