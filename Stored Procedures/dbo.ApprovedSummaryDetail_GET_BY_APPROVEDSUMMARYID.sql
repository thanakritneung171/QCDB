SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[ApprovedSummaryDetail_GET_BY_APPROVEDSUMMARYID] 
@ApprovedSummaryId INT = NULL
as 
SELECT *
FROM ApprovedSummaryDetailView ASD
    LEFT JOIN WorkerView WV on ASD.ApprovedSummaryDetail_WorkerCode = Worker_WorkerCode
where ASD.ApprovedSummaryDetail_ApprovedSummaryId = @ApprovedSummaryId 
GO
