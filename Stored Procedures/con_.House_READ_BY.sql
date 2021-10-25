SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[House_READ_BY] @Id INT = NULL,
									  @PlanCode VARCHAR(10)   = NULL
AS
     SELECT *
     FROM [con].[House]
     WHERE (Id = @Id OR  @Id IS NULL) AND (PlanCode = @PlanCode OR @PlanCode IS NULL)






GO
