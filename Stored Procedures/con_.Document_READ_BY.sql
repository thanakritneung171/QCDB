SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Document_READ_BY] @DocId       INT         = NULL, 
                                          @DocTypeId   INT         = NULL, 
                                          @ProjectCode VARCHAR(10) = NULL
AS
  
     SELECT *
	 FROM con.Document
	 WHERE (DocId = @DocId OR @DocId IS NULL)
	 AND (DocTypeId = @DocTypeId OR @DocTypeId IS NULL)
	 AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL)
GO
