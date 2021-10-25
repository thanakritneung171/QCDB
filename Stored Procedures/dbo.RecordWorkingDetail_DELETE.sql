SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_DELETE] 
	@DailyDetailId int = NULL
AS
     DELETE RecordWorkingDetail
     WHERE DailyDetailId = @DailyDetailId






GO
