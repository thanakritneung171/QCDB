SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorkingDetail_GetSummary] 
 @ProjectCode VARCHAR(20)=NULL,
@DailyCode VARCHAR(20) = NULL,
@WorkerCode VARCHAR(10)=NULL
AS
     ;WITH GetResult
          AS (SELECT distinct rd.*,r.[Date],r.[Status],r.LastVerifiedStatus
              FROM RecordWorkingDetail rd
					left join RecordWorking r on rd.DailyCode = r.DailyCode
                JOIN(
                  SELECT WorkerCode AS _WorkerCode, 
                         MAX([Round]) AS _Round, 
                         MIN(rd.DailyCode) AS _DailyCode
                  FROM RecordWorkingDetail rd LEFT JOIN RecordWorking r ON rd.DailyCode=r.DailyCode
                  WHERE rd.DailyCode = @DailyCode OR @DailyCode IS NULL
				  AND (r.ProjectCode=@ProjectCode OR @ProjectCode IS NULL)
				  AND (rd.WorkerCode=@WorkerCode OR @WorkerCode IS NULL)
                  GROUP BY WorkerCode, 
                           WorkType,rd.DailyCode
              ) RESULT ON RESULT._WorkerCode = rd.WorkerCode
                          AND (rd.[Round] = RESULT._Round
                               OR rd.[Round] IS NULL)
                          AND rd.DailyCode = RESULT._DailyCode),
          GetSum
          AS (SELECT DailyCode,
					[Date],
					[Status],  
					LastVerifiedStatus,
					 WorkerCode, 
                     WorkGroup, 
                     WorkType, 
                     WorkTime, 
              (
                  SELECT COUNT(WorkTime)
                  FROM GetResult
                  WHERE DailyCode = r.DailyCode
                        AND WorkTime = 1
                        AND WorkType = r.WorkType
                        AND WorkerCode = r.WorkerCode
              ) AS CountWorkAllday, 
              (
                  SELECT COUNT(WorkTime)
                  FROM GetResult
                  WHERE DailyCode = r.DailyCode
                        AND WorkTime = 2
                        AND WorkType = r.WorkType
                        AND WorkerCode = r.WorkerCode
              ) AS CountWorkMorning, 
              (
                  SELECT COUNT(WorkTime)
                  FROM GetResult
                  WHERE DailyCode = r.DailyCode
                        AND WorkTime = 3
                        AND WorkType = r.WorkType
                        AND WorkerCode = r.WorkerCode
              ) AS CountWorkAfternoon, 
              (
                  SELECT COUNT(WorkTime)
                  FROM GetResult
                  WHERE DailyCode = r.DailyCode
                        AND WorkTime = 4
                        AND WorkType = r.WorkType
                        AND WorkerCode = r.WorkerCode
              ) AS CountStopWork, 
              (
                  SELECT SUM(TotalOverTime)
                  FROM GetResult
                  WHERE DailyCode = r.DailyCode
                        AND WorkType = r.WorkType
                        AND WorkerCode = r.WorkerCode
              ) AS CountOvertime
              FROM GetResult r)
          SELECT distinct g.*, 
                 w.Wage, 
                 w.Wage / 8 AS wagePerhour, 
          (
              SELECT TOP 1 CASE
                               WHEN g.WorkTime = 1
                               THEN w.Wage
                               WHEN g.WorkTime = 2
                                    OR g.WorkTime = 3
                               THEN w.Wage / 2
                               WHEN g.WorkTime = 4
                               THEN 0
                               WHEN g.WorkTime IS NULL
                                    AND g.WorkType = 4
                               THEN(w.Wage / 8) * CountOvertime
                           END
              FROM GetSum
              WHERE WorkerCode = g.WorkerCode
                    AND WorkType = g.WorkType
          ) AS gotWage
          FROM GetSum g
               LEFT JOIN Worker wk ON g.WorkerCode = wk.WorkerCode
               LEFT JOIN Wage w ON w.WageId = wk.WageId
			   order by WorkerCode

GO
