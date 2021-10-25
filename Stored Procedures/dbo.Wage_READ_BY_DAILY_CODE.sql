SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Wage_READ_BY_DAILY_CODE]
@DailyCode NVARCHAR(50) = NULL
AS
BEGIN	
	
	SELECT DISTINCT wo.WorkerCode, ISNULL(wa.Wage, 0) AS Wage
	FROM [dbo].[Worker] wo
	INNER JOIN [dbo].[RecordWorkingDetail] rd ON wo.WorkerCode = rd.WorkerCode
	INNER JOIN [dbo].[RecordWorking] r ON rd.DailyCode = r.DailyCode
	OUTER APPLY ( SELECT TOP 1 w.* FROM  [dbo].[Wage] w WHERE w.WorkerCode = wo.WorkerCode 
	AND ISNULL(w.StartDate, r.Date) <= r.Date ORDER BY w.StartDate DESC) wa
	WHERE r.DailyCode = @DailyCode
	AND rd.IsActive = 1
END

GO
