SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_READ_BY] @Id INT = NULL
AS
     SELECT * , p.ProjectName as ProjectName
     FROM [con].[ProjectInPlan] pp
	 LEFT JOIN [con].[Project] p on p.ProjectCode = pp.ProjectCode 
     WHERE Id = @Id;
GO
