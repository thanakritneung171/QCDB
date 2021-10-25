SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummaryDetail_DELETE] @RepairMachineSummaryId INT = NULL
AS
     DELETE [MAC].[RepairMachineSummaryDetail]
     WHERE RepairMachineSummaryId = @RepairMachineSummaryId;
GO
