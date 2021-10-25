SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_SELECT] @MonthlyDetailId INT         = NULL, 
                                                     @MonthlyCode     VARCHAR(20) = NULL, 
                                                     @Date            DATETIME = NULL,
													 @ProjectCode     VARCHAR(10) = NULL
AS
     SELECT ap.*, 
            wk.Title + wk.FirstName + ' ' + wk.LastName AS WorkerName, 
            w.Wage AS WageAmount, 
            a.MonthNumber, 
            a.YearNumber
     FROM ApprovedMonthlyDetail ap
          LEFT JOIN ApprovedMonthly a ON ap.MonthlyCode = a.MonthlyCode
          LEFT JOIN Worker wk ON ap.WorkerCode = wk.WorkerCode
          LEFT JOIN Wage w ON w.WageId = wk.WageId
     WHERE((MonthlyDetailId = @MonthlyDetailId
            OR @MonthlyDetailId IS NULL)
           AND (ap.MonthlyCode = @MonthlyCode
                OR @MonthlyCode IS NULL))
			 AND (a.ProjectCode = @ProjectCode
                OR @ProjectCode IS NULL)
          AND (CONVERT(DATE, @Date) >= CONVERT(DATE, a.StartDate)
               AND CONVERT(DATE, @Date) <= CONVERT(DATE, a.EndDate)
               OR @Date IS NULL);
GO
