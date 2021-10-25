SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_READ_BY_DAILY_CODE]
@DailyCode NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[RecordWorkingDetailView]
	WHERE [RecordWorkingDetail_DailyCode] = @DailyCode
END

GO
