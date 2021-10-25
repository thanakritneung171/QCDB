SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInHouse_READ_BY] @Id          INT          = NULL, 
                                                @HouseId     INT          = NULL, 
                                                @ProjectCode NVARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[ProjectInHouse]
     WHERE (Id = @Id OR @Id IS NULL)
	 AND (HouseId = @HouseId OR @HouseId IS NULL)
	 AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL)



GO
