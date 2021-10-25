SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_READ_BY_MONTHLY_CODE]
@MonthlyCode NVARCHAR(50) = NULL
AS
BEGIN	

	SELECT	w.* 
	FROM  [dbo].[WorkLocationView] w
	LEFT JOIN [dbo].[ApprovedMonthlyDetailView] AMD ON w.WorkLocation_MonthlyDetailId = AMD.ApprovedMonthlyDetail_MonthlyDetailId
	WHERE AMD.ApprovedMonthlyDetail_MonthlyCode =  @MonthlyCode


END

GO
