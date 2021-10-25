SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [con].[WorkOrder_SELECT_UNIT_RANGE] 
	@ProjectCode  NVARCHAR(10)  = NULL, 
	@PlanCode     NVARCHAR(10)  = NULL,
	@IsShowComplete   BIT = 0
AS
	SELECT DISTINCT wo.UnitId, wo.UnitName
	FROM con.WorkOrder wo
	JOIN con.ProjectConstructionUnitProgress u on u.UnitId = wo.UnitId
	JOIN con.Work w on w.Id = wo.WorkId
	JOIN con.WorkGroupMain wgm on wgm.Id = w.WorkGroupMainId
	WHERE(wo.ProjectCode = @ProjectCode
			OR @ProjectCode IS NULL)
			AND (wo.PlanCode = @PlanCode
				OR @PlanCode IS NULL)
				AND (((wgm.ControlCode = 'PCT01' AND u.Type = 1 OR wgm.ControlCode != 'PCT01')
			AND (wgm.ControlCode = 'PCT02' AND u.Type = 2  OR wgm.ControlCode != 'PCT02') 
			OR (w.IsOtherWork = 1)) OR (SELECT COUNT(*) FROM con.ProjectConstructionUnitProgress _u WHERE _u.UnitId = u.UnitId ) = 1)
			AND (@IsShowComplete = 1 OR wo.UnitId NOT IN(SELECT UnitId FROM con.ProjectConstructionUnitProgress subP WHERE subP.Type = 2 AND subP.Progress = 3))
			AND ISNUMERIC(UnitName) = 1
			
GO
