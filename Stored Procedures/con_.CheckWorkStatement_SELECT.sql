SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWorkStatement_SELECT] @ProjectCode NVARCHAR(10) = NULL, 
                                                    @HouseId     INT          = NULL, 
                                                    @WorkId      INT          = NULL, 
                                                    @WorkPriceId INT          = NULL, 
                                                    @UnitNumber  NVARCHAR(30) = NULL
AS
     SELECT *
     FROM CheckWorkStatement
     WHERE(ProjectCode = @ProjectCode
           AND @ProjectCode IS NULL)
          AND (HouseId = @HouseId
               AND @HouseId IS NULL)
          AND (WorkId = @WorkId
               AND @WorkId IS NULL)
          AND (WorkPriceId = @WorkPriceId
               AND @WorkPriceId IS NULL)
          AND (UnitNumber = @UnitNumber
               AND @UnitNumber IS NULL);

GO
