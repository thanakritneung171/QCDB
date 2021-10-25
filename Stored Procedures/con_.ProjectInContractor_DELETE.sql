SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_DELETE] @Id INT = NULL
AS
     DELETE [con].[ProjectInContractor] 
     WHERE Id = @Id;
GO
