SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_GETBYDATE]
          @Date DATETIME =NULL
AS
     SELECT DISTINCT 
            rd.DailyDetailId, 
            rd.DailyCode, 
            rd.WorkGroup, 
            rd.Owner, 
            rd.WorkerCode, 
            rd.WorkTime, 
            rd.Round, 
            rd.Description, 
            rd.Remark, 
            rd.TotalOverTime, 
            rd.WorkType, 
			rd.Wage,
			rd.Amount,
            rd.Total,
            wl.UnitId, 
            wl.UnitName, 
            r.Date, 
            r.STATUS,
			r.ProjectCode,
			r.LastVerifiedStatus
     FROM RecordWorkingDetail rd
          LEFT JOIN RecordWorking r ON rd.DailyCode = r.DailyCode
          LEFT JOIN WorkLocation wl ON wl.DailyDetailId = rd.DailyDetailId
         
     WHERE CONVERT(DATE,r.[Date])=CONVERT(DATE,@Date);


	 /* P'Pang  14062021
		-w.Wage, 
		+rd.Wage,
		+rd.AmountWage,
		--LEFT JOIN Worker wk ON rd.WorkerCode = wk.WorkerCode
        --LEFT JOIN Wage w ON wk.WageId = w.WageId
		  */
GO
