SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_READ_BY_DATE]
@Date DATE = NULL
AS
BEGIN	
	SELECT	v.* 
	FROM  [dbo].[RecordWorkingDetailView] v
	INNER JOIN [dbo].[RecordWorking] r ON r.DailyCode = v.RecordWorkingDetail_DailyCode
	WHERE CAST(r.[Date] AS DATE) = @Date
END

GO
