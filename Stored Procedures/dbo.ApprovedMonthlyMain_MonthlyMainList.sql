SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyMain_MonthlyMainList] 
-- Add the parameters for the stored procedure here
	@MonthNumber int = NULL,
	@YearNumber int = NULL
	AS
	BEGIN

	
SELECT PV.Project_ProjectCode,
PV.Project_ProjectName,
am.MonthlyCode,
--AM.MonthlyCode,
ISNULL(AM.TotalWorker,0) as TotalWorker,
SUM(ISNULL(AD.Wage,0)) as TotalWage,
ISNULL ((SUM(ISNULL(AD.Wage,0))  / NULLIF(AM.TotalWorker,0) ),0)as AvgWage,
ISNULL ((SUM(ISNULL(AD.WagePerMonthly,0)) / NULLIF(AM.TotalWorker,0)),0) as AvgWageMonth,
Am.Status as StatusThisMonth
FROM ProjectView PV
LEFT JOIN ApprovedMonthly AM on PV.Project_ProjectCode = AM.ProjectCode AND (am.MonthNumber = @MonthNumber AND am.YearNumber=@YearNumber)
LEFT JOIN ApprovedMonthlyDetail AD on AM.MonthlyCode = AD.MonthlyCode
GROUP BY PV.Project_ProjectCode,Project_ProjectName,Am.TotalWorker,Am.MonthlyCode,Am.Status

END;

--select * from ApprovedMonthlyDetailView
GO
