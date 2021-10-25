SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_DELETE] @Id INT = NULL
AS
     DECLARE @GroupId INT;
     DECLARE @Number INT;
     DECLARE @WorkId INT;
     DECLARE @CountWork INT;
     SET @GroupId =
     (
         SELECT WorkGroupId
         FROM [con].[WorkStatement]
         WHERE Id = @Id
     );
     SET @Number =
     (
         SELECT Number
         FROM [con].[WorkStatement]
         WHERE Id = @Id
     );
     SET @WorkId =
     (
         SELECT WorkId
         FROM [con].[WorkStatement]
         WHERE Id = @Id
     );
     SET @CountWork =
     (
         SELECT COUNT(*)
         FROM [con].[WorkStatement]
         WHERE WorkId = @WorkId
     );
     DELETE [con].[WorkStatement]
     WHERE Id = @Id;

     --ตรวจสอบว่ามีรายการที่ยังใช้งานอยู่หรือไม่ ถ้ามีไม่ต้องทำการลบ number เพราะจะซ้ำ
     IF(@CountWork <= 1)
         BEGIN
             UPDATE [con].[WorkStatement]
               SET 
                   Number = Number - 1
             WHERE WorkGroupId = @GroupId
                   AND Number > @Number;
     END;





GO
