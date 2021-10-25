SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkAtProject_SELECT] 

		@ProjectId int = NULL
AS
     SELECT *
     FROM WorkAtProject
     WHERE ProjectId = @ProjectId OR @ProjectId IS NULL






GO
