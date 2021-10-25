SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ConfigWorker_READ_BY_Active] 
	@ConfigId int = NULL
AS
     SELECT *
     FROM ConfigWorkerView
     WHERE  ConfigWorker_Active = 1






GO
