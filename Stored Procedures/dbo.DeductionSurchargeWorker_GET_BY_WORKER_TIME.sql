SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_GET_BY_WORKER_TIME] -- Add the parameters for the stored procedure here
    @WorkerCode VARCHAR(20) = NULL,
    @ProjectCode VARCHAR(10) = NULL,
    @MonthNumber INT = NULL,
    @YearNumber INT = NULL,
    @Period INT = NULL
as
SELECT *
FROM DeductionSurchargeWorkerView
where DeductionSurchargeWorker_WorkerCode = ISNULL(@WorkerCode, DeductionSurchargeWorker_WorkerCode)
    AND DeductionSurchargeWorker_ProjectCode = ISNULL(@ProjectCode, DeductionSurchargeWorker_ProjectCode)
    AND DeductionSurchargeWorker_MonthNumber = ISNULL(@MonthNumber, DeductionSurchargeWorker_MonthNumber)
    AND DeductionSurchargeWorker_YearNumber = ISNULL(@YearNumber, DeductionSurchargeWorker_YearNumber)
    AND DeductionSurchargeWorker_Period = ISNULL(@Period, DeductionSurchargeWorker_Period) 
GO
