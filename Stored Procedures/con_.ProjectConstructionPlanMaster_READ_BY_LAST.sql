SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlanMaster_READ_BY_LAST] @ProjectCode VARCHAR(10) = NULL, 
                                                                   @Type        INT         = NULL, 
                                                                   @Status      INT         = NULL,
																   @IsUpdateProgress BIT         = NULL
AS
     SELECT TOP 1 *
     FROM [con].[ProjectConstructionPlanMaster] pcp
     WHERE(ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (Type = @Type
               OR @Type IS NULL)
          AND (STATUS = @Status
               OR @Status IS NULL)
		  AND ((ISNULL(pcp.IsUpdateProgress , 0) = 0 AND @IsUpdateProgress IS NULL) 
		  OR (ISNULL(pcp.IsUpdateProgress , 0) = @IsUpdateProgress  AND  @IsUpdateProgress IS NOT NULL))
     ORDER BY CreatedDate DESC;
GO
