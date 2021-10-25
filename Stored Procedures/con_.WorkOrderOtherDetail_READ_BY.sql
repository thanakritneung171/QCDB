SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderOtherDetail_READ_BY] @Id INT = NULL
AS
     SELECT *
     FROM [con].[WorkOrderOtherDetail]
     WHERE Id = @Id;
GO
