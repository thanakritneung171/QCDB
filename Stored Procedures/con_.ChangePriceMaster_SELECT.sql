SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_SELECT] @ProjectTypeId INT          = NULL, 
                                                 @WorkId        INT          = NULL, 
                                                 @HouseId       INT          = NULL, 
                                                 @ProjectCode   NVARCHAR(10) = NULL, 
                                                 @Type          INT          = NULL, 
                                                 @Status        INT          = NULL
AS
     SELECT DISTINCT cp.*
     FROM [con].[ChangePriceMaster] cp
          LEFT JOIN [con].[House] h ON h.Id = cp.HouseId
          LEFT JOIN [con].[ProjectInHouse] p ON p.ProjectCode = cp.ProjectCode AND h.Id = p.HouseId
     WHERE(cp.ProjectTypeId = @ProjectTypeId
           OR @ProjectTypeId IS NULL)
          AND (WorkId = @WorkId
               OR @WorkId IS NULL)
          AND (cp.HouseId = @HouseId
               OR @HouseId IS NULL)
          AND (cp.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (cp.Type = @Type
               OR @Type IS NULL)
          AND (cp.Status = @Status
               OR @Status IS NULL)
          AND (h.Active = 1
               OR cp.HouseId IS NULL)
          AND (p.Active = 1
               OR cp.ProjectCode IS NULL);

GO
