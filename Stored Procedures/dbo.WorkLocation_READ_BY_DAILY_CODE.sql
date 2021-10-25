SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_READ_BY_DAILY_CODE]
@DailyCode NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	w.* 
	FROM  [dbo].[WorkLocationView] w
	LEFT JOIN [dbo].[RecordWorkingDetail] r ON w.WorkLocation_DailyDetailId = r.DailyDetailId
	WHERE r.[DailyCode] = @DailyCode
END

GO
