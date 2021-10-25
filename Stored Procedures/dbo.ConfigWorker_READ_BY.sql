SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ConfigWorker_READ_BY] 
	@ConfigId int = NULL
AS
     SELECT *
     FROM ConfigWorker
     WHERE ConfigId = @ConfigId OR @ConfigId IS NULL AND Active = 1






GO
