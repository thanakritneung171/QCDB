SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroup_DELETE] @Id INT = NULL
AS
     DECLARE @WorkGroupMainId INT;
     SET @WorkGroupMainId =
     (
         SELECT TOP 1 WorkGroupMainId
         FROM [con].[WorkGroup]
         WHERE Id = @Id
     );
     DECLARE @Number INT;
     SET @Number =
     (
         SELECT TOP 1 Number
         FROM [con].[WorkGroup]
         WHERE Id = @Id
     );
     DELETE [con].[WorkGroup]
     WHERE Id = @Id;
     UPDATE [con].[WorkGroup]
       SET 
           Number = Number - 1
     WHERE WorkGroupMainId = @WorkGroupMainId
           AND Number > @Number;





GO
