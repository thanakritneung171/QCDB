SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_CREATE] 
-- Add the parameters for the stored procedure here
  @WorkerCode VARCHAR(20)  = NULL,
    @ProjectCode VARCHAR(10) = NULL,
    @TypeWage INT = NULL,
    @MonthNumber INT = NULL,
    @YearNumber INT = NULL ,
	@Period INT = NULL ,@NameWage VARCHAR = NULL,@Price  DECIMAL(10, 2)= NULL ,@AdjustDate DATETIME = NULL,@AdjustBy INT= NULL ,@CreatedBy INT= NULL
	as
INSERT INTO DeductionSurchargeWorker (
        WorkerCode,
        ProjectCode,
        TypeWage,
        MonthNumber,
        YearNumber,
        Period,
        NameWage,
        Price,
        AdjustDate,
        AdjustBy,
        CreatedBy
    )
VALUES (
        @WorkerCode,
        @ProjectCode,
        @TypeWage,
        @MonthNumber,
        @YearNumber,
        @Period,
        @NameWage,
        @Price,
        @AdjustDate,
        @AdjustBy,
        @CreatedBy
    );

	SELECT * FROM  DeductionSurchargeWorkerView WHERE DeductionSurchargeWorker_id= @@IDENTITY
GO
