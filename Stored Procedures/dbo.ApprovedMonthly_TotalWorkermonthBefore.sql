SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_TotalWorkermonthBefore] 
-- Add the parameters for the stored procedure here


-- Add the parameters for the stored procedure here
@MonthNumber  INT = NULL, 
@YearNumber   INT = NULL

AS
BEGIN


select  ProjectCode,TotalWorker   from ApprovedMonthly  ap
where ap.MonthNumber= @MonthNumber and ap.YearNumber=@YearNumber 


END
GO
