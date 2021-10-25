SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_SELECT] @ConstPlanCode VARCHAR(10) = NULL, 
                                                       @UnitId        INT         = NULL, 
                                                       @Status        INT         = NULL
AS
     SELECT pcp.*, 
            pcpm.ApprovedDate, 
            pcpm.ApprovedBy, 
            pcpm.Type,
			(SELECT TOP 1 pps.ProgressPercent FROM con.ProgressPercentSetting pps WHERE pps.Id = pcp.ProgressPercentId ) as ProgressPercent
     FROM [con].[ProjectConstructionPlanMaster] pcpm
          JOIN [con].[ProjectConstructionPlan] pcp ON pcp.ConstPlanCode = pcpm.Code
     WHERE(pcp.ConstPlanCode = @ConstPlanCode
           OR @ConstPlanCode IS NULL)
          AND (pcp.UnitId = @UnitId
               OR @UnitId IS NULL)
          AND (pcp.STATUS = @Status
               OR @Status IS NULL)
     ORDER BY CAST(pcp.UnitNumber AS INT);
GO
