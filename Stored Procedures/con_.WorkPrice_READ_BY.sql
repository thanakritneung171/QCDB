SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkPrice_READ_BY] @Id            INT            = NULL, 
                                           @ProjectTypeId INT            = NULL, 
                                           @WorkId        INT            = NULL, 
                                           @HouseId       INT            = NULL, 
                                           @ProjectCode   NVARCHAR(10)  = NULL
AS
     SELECT *
     FROM [con].[WorkPrice]
     WHERE(Id = @Id
           OR @Id IS NULL)
          AND ((ProjectTypeId = @ProjectTypeId
                OR (@ProjectTypeId IS NULL
                    AND ProjectTypeId IS NULL))
               AND (WorkId = @WorkId
                    OR @WorkId IS NULL)
               AND (HouseId = @HouseId 
			        OR (@HouseId IS NULL AND HouseId IS NULL))
               AND (ProjectCode = @ProjectCode
                    OR (@ProjectCode IS NULL
                        AND ProjectCode IS NULL))
               OR @Id IS NOT NULL);




GO
