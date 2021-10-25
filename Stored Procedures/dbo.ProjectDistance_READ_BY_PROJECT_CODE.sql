SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ProjectDistance_READ_BY_PROJECT_CODE]
@Source NVARCHAR(50) = NULL,
@Destination NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	v.* , sp.ProjectName AS SourceProjectName , dp.ProjectName AS DestinationProjectName
	FROM  [dbo].[ProjectDistance] v
		JOIN  [con].[Project] sp ON v.SourceProject = sp.ProjectCode
		JOIN  [con].[Project] dp ON v.DestinationProject = dp.ProjectCode
	WHERE [SourceProject] = @Source
	AND [DestinationProject] = @Destination
	AND [IsActive] = 1
END

GO
