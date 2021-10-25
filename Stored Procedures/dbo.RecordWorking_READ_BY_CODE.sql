SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_READ_BY_CODE]
@Code NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[RecordWorkingView]
	WHERE [RecordWorking_DailyCode] = @Code
END

GO