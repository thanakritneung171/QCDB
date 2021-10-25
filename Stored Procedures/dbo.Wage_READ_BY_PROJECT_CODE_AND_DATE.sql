SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Wage_READ_BY_PROJECT_CODE_AND_DATE]
@ProjectCode NVARCHAR(50) = NULL,
@Date DATE = NULL
AS
BEGIN	

	SELECT wo.WorkerCode, ISNULL(wa.Wage, 0) AS Wage, wa.StartDate
	FROM [dbo].[Worker] wo
	INNER JOIN [dbo].[WorkAtProject] pr ON wo.ProjectId = pr.ProjectId
	OUTER APPLY ( SELECT TOP 1 w.* FROM  [dbo].[Wage] w WHERE w.WorkerCode = wo.WorkerCode 
	AND ISNULL(w.StartDate, @Date) <= @Date ORDER BY w.StartDate DESC) wa
	  WHERE pr.ProjectCode = ISNULL(@ProjectCode, pr.ProjectCode)
END

GO
