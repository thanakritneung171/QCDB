SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWork_SELECT] @ProjectCode NVARCHAR(10) = NULL, 
                                          @HouseId     INT          = NULL, 
                                          @WorkId      INT          = NULL, 
                                          @UnitNumber  NVARCHAR(30) = NULL
AS
     SELECT *
     FROM [con].[CheckWork]
     WHERE(ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (HouseId = @HouseId
               OR @HouseId IS NULL)
          AND (WorkId = @WorkId
               OR @WorkId IS NULL)
          AND (UnitNumber = @UnitNumber
               OR @UnitNumber IS NULL);

GO
