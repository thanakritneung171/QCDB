SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_READ_BY_PROJECT_DATE]
@ProjectCode NVARCHAR = NULL,
@Date DATE = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[RecordWorkingView]
	WHERE 
	RecordWorking_ProjectCode= @ProjectCode
	AND CAST([RecordWorking_Date] AS DATE) = @Date
END

GO
