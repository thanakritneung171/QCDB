SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedSummary_READ_Record_YEAR] 
-- Add the parameters for the stored procedure here
	@ProjectCode nvarchar(10) = NULL,
	@YearNumber int = NULL	

	AS
	BEGIN
		
	    select ApS.ApprovedSummary_Month,
		ApS.ApprovedSummary_Year,
		ISNULL(SUM(ApS.ApprovedSummary_TotalWorker),0) as ApprovedSummary_TotalWorker,
		ISNULL(SUM(ApS.ApprovedSummary_Total/ApS.ApprovedSummary_TotalWorker),0)  as  ApprovedSummary_TotalWagePerWorker,
		ISNULL(SUM(ApS.ApprovedSummary_TotalOverTime),0) as ApprovedSummary_TotalOverTime ,
		ISNULL(SUM(ApS.ApprovedSummary_Total),0) as ApprovedSummary_Total		
		from ApprovedSummaryView  ApS
		WHERE 
		ApS.ApprovedSummary_ProjectCode=@ProjectCode
		AND ApS.ApprovedSummary_Year=@YearNumber
		GROUP BY ApS.ApprovedSummary_Month,ApS.ApprovedSummary_Year



END
GO
