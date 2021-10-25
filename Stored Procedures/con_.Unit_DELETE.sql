SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_DELETE] @Id INT = NULL
AS

     DECLARE @ProjectCode VARCHAR(10) = (SELECT TOP 1 ProjectCode FROM [con].[Unit] WHERE Id = @Id)
    
	 DELETE [con].WorkOrder
	 WHERE ProjectCode = @ProjectCode AND UnitId = @Id
	

	 DELETE [con].[Unit]
     WHERE Id = @Id;
GO
