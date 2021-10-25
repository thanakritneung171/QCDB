SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_GetSummary] @Date DATETIME
AS
     SELECT ad.*, 
            a.ProjectCode, 
            w.Wage AS AmountWage, 
            w.Wage * ad.Wage AS GotWage, 
            (w.Wage * ad.Wage) *
     (
         SELECT DAY(EOMONTH(@Date))
     ) AS GotWagePermonth
     FROM ApprovedMonthlyDetail ad
          LEFT JOIN ApprovedMonthly a ON ad.MonthlyCode = a.MonthlyCode
          LEFT JOIN Worker wk ON ad.WorkerCode = wk.WorkerCode
          LEFT JOIN Wage w ON w.WageId = wk.WageId
		  where @Date >= a.StartDate and  @Date <= a.EndDate
		  --a.MonthNumber = MONTH(@Date) and a.YearNumber = YEAR(@Date)
GO
