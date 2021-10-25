SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectType_SELECT] @Active BIT = NULL, 
                                            @Status INT = NULL
AS
     SELECT *
     FROM [con].[ProjectType]
     WHERE(Active = @Active
           OR @Active IS NULL)
          AND (STATUS = @Status
               OR @Status IS NULL);




GO
