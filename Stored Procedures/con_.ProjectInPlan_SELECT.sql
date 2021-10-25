SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_SELECT] @ProjectCode VARCHAR(10) = NULL, 
                                             @PlanCode    VARCHAR(10) = NULL
AS
     SELECT * , p.ProjectName as ProjectName
     FROM [con].[ProjectInPlan] pp
	 LEFT JOIN [con].[Project] p on p.ProjectCode = pp.ProjectCode 
     WHERE(pp.ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (pp.PlanCode = @PlanCode
               OR @PlanCode IS NULL);
GO
