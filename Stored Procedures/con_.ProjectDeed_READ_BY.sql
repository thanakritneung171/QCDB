SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[ProjectDeed]
     WHERE Id = @Id;
GO