SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_READ_BY] @Id          INT         = NULL
AS
     SELECT *
     FROM [con].[ProjectConstructionPlan] pcp
	 WHERE Id = @Id
GO
