SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[House_SELECT] @ProjectTypeId INT         = NULL, 
                                     @PlanCode      VARCHAR(10) = NULL, 
                                     @Active        INT         = NULL
AS
     SELECT *
     FROM [con].[House]
     WHERE (ProjectTypeId = @ProjectTypeId OR @ProjectTypeId IS NULL)
		   AND (Active = 1) 
		   AND (PlanCode = @PlanCode OR @PlanCode IS NULL);
GO
