SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[File_READ_BY] @DocId   INT         = NULL, 
                                     @RefCode VARCHAR(10) = NULL, 
                                     @RefId   INT         = NULL
AS
     SELECT *
     FROM [con].[File]
     WHERE(DocId = @DocId
           OR @DocId IS NULL)
          AND (RefCode = @RefCode
               OR @RefCode IS NULL)
          AND (RefId = @RefId
               OR @RefId IS NULL);
GO
