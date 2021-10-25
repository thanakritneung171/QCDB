SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_READ_BY] 
	@DailyDetailId int = NULL,
	 @DailyCode            VARCHAR= NULL, 
     @WorkerCode           VARCHAR= NULL
AS
     SELECT rd.*,w.Wage
     FROM RecordWorkingDetail rd
	 left join Worker wk on rd.WorkerCode = wk.WorkerCode
	 left join Wage w on w.WageId = wk.WageId 
     WHERE rd.DailyDetailId = @DailyDetailId
	 AND (rd.DailyCode=@DailyCode OR @DailyCode IS NULL)
	 AND (rd.WorkerCode=@WorkerCode OR @WorkerCode IS NULL)






GO
