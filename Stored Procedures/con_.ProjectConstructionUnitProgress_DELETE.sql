SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_DELETE] @Id INT = NULL
AS
     DELETE [con].[ProjectConstructionUnitProgress]
     WHERE Id = @Id;
GO
