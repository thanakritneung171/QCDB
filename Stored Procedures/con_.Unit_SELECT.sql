SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_SELECT] @ProjectCode VARCHAR(10) = NULL, 
                                    @UnitType    INT         = NULL, 
                                    @PlanCode    VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[Unit]
     WHERE(ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (UnitType = @UnitType
               OR @UnitType IS NULL)
          AND (PlanCode = @PlanCode
               OR @PlanCode IS NULL);
GO
