SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[ProjectAreaDetail]
     WHERE Id = @Id;
GO
