SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_DELETE_BY_MONTHLY_CODE]
@MonthlyCode NVARCHAR(50) = NULL
AS
BEGIN	

	delete WorkLocation from WorkLocation wl
	left join ApprovedMonthlyDetail  ad on wl.MonthlyDetailId = ad.MonthlyDetailId
	where  MonthlyCode =  @MonthlyCode


END

GO
