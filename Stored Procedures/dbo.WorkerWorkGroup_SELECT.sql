SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkerWorkGroup_SELECT] 

		@WorkGroupId int = NULL
AS
     SELECT *
     FROM WorkerWorkGroup
     WHERE WorkGroupId = @WorkGroupId OR @WorkGroupId IS NULL






GO
