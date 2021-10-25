SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[ProjectConstructionUnitProgress]
     WHERE Id = @Id;
GO
