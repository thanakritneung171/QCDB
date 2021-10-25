SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_TotalWorkGroupCount] 
-- Add the parameters for the stored procedure here


-- Add the parameters for the stored procedure here
@MonthNumber  INT = NULL, 
@YearNumber   INT = NULL

AS
BEGIN


select  P.Project_ProjectCode as ProjectCode,ad.WorkGroup, COUNT(1) AS Total   from ProjectView  P
left join ApprovedMonthly  ap  on P.Project_ProjectCode = ap.ProjectCode
left join ApprovedMonthlyDetail  ad  on ap.MonthlyCode = ad.MonthlyCode
where ap.MonthNumber= @MonthNumber and ap.YearNumber=@YearNumber AND WorkGroup IS NOT NULL
group by ad.WorkGroup,P.Project_ProjectCode


END
GO
