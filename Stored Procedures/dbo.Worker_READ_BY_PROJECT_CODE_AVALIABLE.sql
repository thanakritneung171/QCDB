SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_READ_BY_PROJECT_CODE_AVALIABLE]
@ProjectCode NVARCHAR(50) = NULL,
@DailyCode NVARCHAR(50) = NULL,
@Date DATE = NULL
AS
BEGIN	
	SELECT	v.* 
	FROM  [dbo].[WorkerView] v
	INNER JOIN [dbo].[WorkAtProject] p ON v.Worker_ProjectId = p.ProjectId
	WHERE p.[ProjectCode] = @ProjectCode
	AND v.Worker_Active = 1
	AND v.Worker_WorkerCode NOT IN (
			SELECT	d.WorkerCode
			FROM	[dbo].[RecordWorkingDetail] d			
				JOIN [dbo].[RecordWorking] r ON d.DailyCode = r.DailyCode
			WHERE	d.DailyCode != ISNULL(@DailyCode, '')
				AND r.Date = ISNULL(@Date, r.Date)
				AND d.IsActive = 1
		)
END

GO
