SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_DELETE] @Id INT = NULL
AS
     DELETE [con].[ProjectInPlan]
     WHERE Id = @Id;
GO
