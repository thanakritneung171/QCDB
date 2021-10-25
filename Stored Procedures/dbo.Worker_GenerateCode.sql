SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_GenerateCode] @RunningNo INT
AS
     IF(
     (
         SELECT COUNT(*)
         FROM [dbo].[Worker] w
		 WHERE w.RunningNO IS NOT NULL
     ) > 0)
         BEGIN
             SET @RunningNo =  ISNULL(@RunningNo , 1) + 
             (
                 SELECT TOP 1 w.RunningNo
                 FROM [dbo].[Worker] w
                 WHERE w.RunningNO IS NOT NULL
                 ORDER BY w.RunningNO DESC
             );
     END;
     SELECT 'W' + RIGHT('000' + CAST(ISNULL(@RunningNo,1) AS VARCHAR(3)), 3) AS WorkerCode,  ISNULL(@RunningNo,1) AS RunningNo;
GO
