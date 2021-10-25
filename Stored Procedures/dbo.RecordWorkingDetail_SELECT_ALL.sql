SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_SELECT_ALL] 
	@DailyCode varchar(20) = NULL
AS
     SELECT rd.*,w.Wage
     FROM RecordWorkingDetail rd 
	 left join Worker wk on rd.WorkerCode = wk.WorkerCode
	 left join Wage w on w.WageId = wk.WageId
     WHERE rd.DailyCode = @DailyCode OR @DailyCode IS NULL






GO
