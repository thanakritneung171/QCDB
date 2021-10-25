SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_GetWorkDailyCount] 
	 @DailyCode VARCHAR(20),
	 @WorkerCode VARCHAR(20),
	 @WorkTime INT
AS
BEGIN
SELECT COUNT(*) as WorkerCount
FROM 
(select WorkerCode,max([Round]) as recRound 
  from [dbo].[RecordWorkingDetail]
  where DailyCode = @DailyCode
  and (WorkerCode=@WorkerCode OR @WorkerCode IS NULL)
  and (WorkTime not in(4,5) OR @WorkTime IS NULL)
  group by WorkerCode) AA
END
GO
