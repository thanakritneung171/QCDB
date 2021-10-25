SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_SELECT] @ProjectCode VARCHAR(10) = NULL, 
                                                                @UnitId      INT         = NULL, 
                                                                @Type        INT         = NULL, 
                                                                @Progress    INT         = NULL
AS
     SELECT * , (SELECT TOP 1 pps.ProgressPercent FROM con.ProgressPercentSetting pps WHERE pps.Id = pu.ProgressPercentId ) as ProgressPercent
     FROM [con].[ProjectConstructionUnitProgress] pu
     WHERE(ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (UnitId = @UnitId
               OR @UnitId IS NULL)
          AND (Type = @Type
               OR @Type IS NULL)
          AND (Progress = @Progress
               OR @Progress IS NULL);
GO
