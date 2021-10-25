SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_READ_BY_ID]
@Id INT = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[RecordWorkingDetailView]
	WHERE [RecordWorkingDetail_DailyDetailId] = @Id
END

GO
