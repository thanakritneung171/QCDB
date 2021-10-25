SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Document_UPDATE] @DocId              INT           = NULL, 
                                         @Note               NVARCHAR(256) = NULL, 
                                         @Active             BIT           = NULL, 
                                         @LastUpdateFileDate DATETIME      = NULL, 
                                         @LastUodateFileBy   INT           = NULL
AS
     UPDATE con.Document
       SET 
           Note = @Note, 
           Active = @Active, 
           LastUpdateFileDate = @LastUpdateFileDate, 
           LastUodateFileBy = @LastUodateFileBy
     WHERE(DocId = @DocId
           OR @DocId IS NULL);
GO
