SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkUnit_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[WorkUnit]
     WHERE Id = @Id;




GO
