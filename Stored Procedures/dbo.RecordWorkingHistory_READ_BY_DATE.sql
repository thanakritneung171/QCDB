SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingHistory_READ_BY_DATE]
@Date DATE = NULL
AS
BEGIN	
	SELECT	v.* 
	FROM  [dbo].[RecordWorkingHistoryView] v
	INNER JOIN [dbo].[RecordWorking] r ON r.DailyCode = v.RecordWorkingHistory_DailyCode
	WHERE CAST(r.[Date] AS DATE) = @Date
END

GO
