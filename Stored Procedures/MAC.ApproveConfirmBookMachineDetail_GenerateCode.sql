SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_GenerateCode] 
AS

     DECLARE @Code VARCHAR(10)
     DECLARE @CodeNumber INT;
     SET @CodeNumber = 1;
     IF(
     (
         SELECT COUNT(*)
         FROM [MAC].[ApproveConfirmBookMachineDetail]
     ) > 0)
         BEGIN
             SET @CodeNumber =
             (
                 SELECT TOP 1 ISNULL(CodeNumber,0) + 1
                 FROM [MAC].[ApproveConfirmBookMachineDetail]
                 ORDER BY CodeNumber DESC
             );
     END;
	  SET @Code = 'BK' + SUBSTRING((CAST(YEAR(GETDATE()) + 543 AS VARCHAR(10))), 3, 4) + RIGHT('0000' + CAST(@CodeNumber AS VARCHAR(4)), 4);
	  SELECT @Code as Code , @CodeNumber as CodeNumber
GO
