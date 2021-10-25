SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ConfigWorker_SELECT] 

		@ConfigId int = NULL
AS
     SELECT *
     FROM ConfigWorker
     WHERE ConfigId = @ConfigId OR @ConfigId IS NULL






GO
