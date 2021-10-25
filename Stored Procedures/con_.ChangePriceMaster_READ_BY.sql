SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[ChangePriceMaster]
     WHERE Id = @Id;




GO
