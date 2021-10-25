SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_DELETE] @Id INT = NULL
AS
     DELETE [con].[ProjectConstructionPlan]
     WHERE Id = @Id;
GO
