SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[WorkStatement]
     WHERE Id = @Id;





GO
