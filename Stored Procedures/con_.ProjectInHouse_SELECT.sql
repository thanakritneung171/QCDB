SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInHouse_SELECT] @HouseId           INT          = NULL,
											   @ProjectCode	      NVARCHAR(10) = NULL,
											   @Status       INT           = NULL
AS
	 SELECT *
     FROM [con].[ProjectInHouse]
     WHERE (HouseId = @HouseId OR @HouseId IS NULL)
	 AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL)
	 AND (Active = 1)
	 AND (Status = @Status OR @Status IS NULL);




GO
