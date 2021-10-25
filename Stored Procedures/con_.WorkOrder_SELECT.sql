SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_SELECT] @ProjectCode  NVARCHAR(10)  = NULL, 
                                         @PlanCode     NVARCHAR(10)  = NULL, 
                                         @WorkId       INT           = NULL, 
                                         @Status       INT           = NULL, 
                                         @Active       BIT           = NULL, 
                                         @UnitName     NVARCHAR(256) = NULL, 
                                         @UnitId       INT           = NULL, 
                                         @SetToPayType INT           = NULL
AS
    BEGIN
        SELECT DISTINCT wo.*  ,wgm.ControlCode
		, CASE WHEN (u.Type = 1 AND wgm.ControlCode = 'PCT01') OR (u.Type = 2 AND wgm.ControlCode = 'PCT02') THEN u.Progress ELSE NULL END as UnitPlanProgress
		,(CASE WHEN  ((u.Type = 1 AND wgm.ControlCode = 'PCT01') OR (u.Type = 2 AND wgm.ControlCode = 'PCT02')) THEN 1 ELSE 0 END) as IsProceedConstruction
        FROM con.WorkOrder wo
		JOIN con.ProjectConstructionUnitProgress u on u.UnitId = wo.UnitId
		JOIN con.Work w on w.Id = wo.WorkId
		JOIN con.WorkGroupMain wgm on wgm.Id = w.WorkGroupMainId
        WHERE(wo.ProjectCode = @ProjectCode
              OR @ProjectCode IS NULL)
             AND (wo.PlanCode = @PlanCode
                  OR @PlanCode IS NULL)
             AND (wo.WorkId = @WorkId
                  OR @WorkId IS NULL)
             AND (wo.Status = @Status
                  OR @Status IS NULL)
             AND (wo.Active = @Active
                  OR @Active IS NULL)
             AND (wo.UnitName = @UnitName
                  OR @UnitName IS NULL)
             AND (wo.UnitId = @UnitId
                  OR @UnitId IS NULL)
             AND (wo.SetToPayType = @SetToPayType
                  OR @SetToPayType IS NULL)
				 AND (((wgm.ControlCode = 'PCT01' AND u.Type = 1 OR wgm.ControlCode != 'PCT01')
				AND (wgm.ControlCode = 'PCT02' AND u.Type = 2  OR wgm.ControlCode != 'PCT02') 
				OR (w.IsOtherWork = 1)) OR (SELECT COUNT(*) FROM con.ProjectConstructionUnitProgress _u WHERE _u.UnitId = u.UnitId ) = 1)
			
    END;
GO
