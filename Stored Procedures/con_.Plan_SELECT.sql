SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Plan_SELECT] @PlanName             NVARCHAR(256)  = NULL,
									@PlanGroup INT = NULL, 
                                    @PlanType  INT = NULL, 
                                    @Active    BIT = NULL
AS
     SELECT *
     FROM [con].[Plan]
     WHERE(PlanGroup = @PlanGroup
           OR @PlanGroup IS NULL)
          AND (PlanType = @PlanType
               OR @PlanType IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
		  AND (PlanName = @PlanName OR @PlanName IS NULL)
GO
