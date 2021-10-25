SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_READ_BY_DAILY_DATE]
@Date DATE = NULL
AS
BEGIN	
	SELECT	w.* 
	FROM  [dbo].[WorkLocationView] w
	LEFT JOIN [dbo].[RecordWorkingDetail] rd ON w.WorkLocation_DailyDetailId = rd.DailyDetailId
	LEFT JOIN [dbo].[RecordWorking] r ON r.DailyCode = rd.DailyCode
	WHERE CAST(r.Date AS DATE) = @Date
END

GO
