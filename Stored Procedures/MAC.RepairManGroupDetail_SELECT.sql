SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroupDetail_SELECT] @RepairManGroupId INT = NULL, 
                                                     @UserId           INT = NULL
AS
     SELECT *
	 FROM [MAC].[RepairManGroupDetail]
     WHERE (RepairManGroupId = @RepairManGroupId OR @RepairManGroupId IS NULL)
           AND (UserId = @UserId OR @UserId IS NULL);
GO
