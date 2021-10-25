SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_READ_BY_PROJECT_CODE]
@ProjectCode NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	v.* 
	FROM  [dbo].[WorkerView] v
	INNER JOIN [dbo].[WorkAtProject] p ON v.Worker_ProjectId = p.ProjectId
	WHERE p.[ProjectCode] = @ProjectCode
END

GO
