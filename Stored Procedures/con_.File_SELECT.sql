SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[File_SELECT] @DocId            INT = NULL, 
                                    @IsCurrentVersion BIT = NULL, 
                                    @Active           BIT = NULL
AS
     SELECT *
     FROM [con].[File]
     WHERE(DocId = @DocId
           OR @DocId IS NULL)
          AND (IsCurrentVersion = @IsCurrentVersion
               OR @IsCurrentVersion IS NULL)
          AND (Active = @Active
               OR @Active IS NULL);
GO
