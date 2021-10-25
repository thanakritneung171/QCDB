SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummaryDetail_SELECT] @RepairMachineSummaryId INT = NULL
AS
     SELECT *
     FROM [MAC].[RepairMachineSummaryDetail]
     WHERE RepairMachineSummaryId = @RepairMachineSummaryId;
GO
