SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Work_DELETE] @Id INT = NULL
AS
     DECLARE @GroupId INT;
     DECLARE @Number INT;
     SET @GroupId =
     (
         SELECT WorkGroupId
         FROM [con].[Work]
         WHERE Id = @Id
     );
     SET @Number =
     (
         SELECT Number
         FROM [con].[Work]
         WHERE Id = @Id
     );

     DELETE [con].[Work]
     WHERE Id = @Id;

     UPDATE [con].[Work]
       SET 
           Number = Number - 1
     WHERE WorkGroupId = @GroupId
           AND Number > @Number;




GO
