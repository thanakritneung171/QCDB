SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[ApprovedSummary_SEARCH_BY] 
    @ProjectCode NVARCHAR(10) = NULL,
    @YearNumber INT = NULL,
    @MonthNumber INT = NULL

	as 
SELECT *FROM ApprovedSummaryView AsP
where AsP.ApprovedSummary_ProjectCode = ISNULL(@ProjectCode, AsP.ApprovedSummary_ProjectCode)
    AND AsP.ApprovedSummary_Month = ISNULL(@MonthNumber, AsP.ApprovedSummary_Month)
    AND AsP.ApprovedSummary_Year = ISNULL(@YearNumber, AsP.ApprovedSummary_Year)


GO
