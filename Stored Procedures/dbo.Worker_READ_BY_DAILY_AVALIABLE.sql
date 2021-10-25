SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_READ_BY_DAILY_AVALIABLE]
@Project NVARCHAR(255),
@Date DATE = NULL
AS
BEGIN	
	DECLARE @ProjectList TABLE (ProjectCode NVARCHAR(10))
	INSERT INTO @ProjectList
	SELECT value
	FROM   STRING_SPLIT(@Project, ',')

	SELECT r.ProjectCode, v.*
	FROM  [dbo].[WorkerView] v 
	JOIN [dbo].[RecordWorkingDetail] rd ON v.Worker_WorkerCode = rd.WorkerCode
	JOIN [dbo].[RecordWorking] r ON r.DailyCode = rd.DailyCode
	JOIN @ProjectList pl ON pl.ProjectCode = r.ProjectCode
	WHERE CAST(r.Date AS DATE) = @Date
	AND rd.WorkType = 3
	AND NOT EXISTS (SELECT TOP 1 *
			FROM [dbo].[ApprovedMonthlyDetail] md 
			JOIN [dbo].[ApprovedMonthly] m ON m.MonthlyCode = m.MonthlyCode
			WHERE  @Date >= CAST(m.StartDate AS DATE)  AND @Date <= CAST(m.EndDate AS DATE)
			AND m.Status = 3
			AND m.ProjectCode = pl.ProjectCode
			AND md.WorkerCode = v.Worker_WorkerCode)

	--SELECT	p.ProjectCode, v.* 
	--FROM  [dbo].[WorkerView] v
	--INNER JOIN [dbo].[WorkAtProject] p ON v.Worker_ProjectId = p.ProjectId
	--JOIN @ProjectList pl ON p.ProjectCode = pl.ProjectCode
	--WHERE v.Worker_Active = 1
	--AND NOT EXISTS (SELECT TOP 1 *
	--	FROM [dbo].[RecordWorkingDetail] rd 
	--	JOIN [dbo].[RecordWorking] r ON r.DailyCode = rd.DailyCode
	--	WHERE CAST(r.Date AS DATE) = @Date
	--	AND r.ProjectCode = p.ProjectCode
	--	AND rd.WorkerCode = v.Worker_WorkerCode
	--	AND rd.IsActive = 1)
END

GO
