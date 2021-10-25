SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_SELECT] @DailyDetailId     INT         = NULL, 
                                                   @DailyCode         VARCHAR(20) = NULL, 
                                                   @ProjectCode       VARCHAR(10) = NULL, 
                                                   @WorkerCode        VARCHAR(10) = NULL, 
                                                   @RecordWorkingDate DATE    = NULL
AS
     SELECT DISTINCT 
            rd.DailyDetailId, 
            rd.DailyCode, 
            rd.WorkGroup, 
            rd.[Owner], 
            rd.WorkerCode, 
            rd.WorkTime, 
            rd.[Round], 
            rd.[Description], 
            rd.Remark, 
            rd.TotalOverTime, 
            rd.WorkType, 
            rd.Wage,
			rd.Amount,
			rd.Total, 
            wl.UnitId, 
            wl.UnitName, 
            r.[Date], 
            r.[STATUS],
			r.ProjectCode,
			r.LastVerifiedStatus
     FROM RecordWorkingDetail rd
          LEFT JOIN RecordWorking r ON rd.DailyCode = r.DailyCode
          LEFT JOIN WorkLocation wl ON wl.DailyDetailId = rd.DailyDetailId
          
     WHERE(rd.DailyDetailId = @DailyDetailId
           OR @DailyDetailId IS NULL)
          AND (rd.DailyCode = @DailyCode
               OR @DailyCode IS NULL)
          AND (r.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (rd.WorkerCode = @WorkerCode
               OR @WorkerCode IS NULL)
          AND (r.Date = @RecordWorkingDate
               OR @RecordWorkingDate IS NULL);
			   /* P'pang 14/6/2021
			   -w.Wage
			   +rd.Wage,
				+rd.AmountWage,

				--LEFT JOIN Worker wk ON rd.WorkerCode = wk.WorkerCode
          --LEFT JOIN Wage w ON wk.WageId = w.WageId
			   */
GO
