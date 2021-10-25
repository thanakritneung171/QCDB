SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConfigWorker_CREATE] 
-- Add the parameters for the stored procedure here
			@DailySentWorkBefore             DATETIME, 
			@DailySentDescriptionWorkBefore  DATETIME,
			@DailyVerifyRecordBefore	     DATETIME,
			@DailySentOvertimeBefore         DATETIME, 
			@OTAmountWorkLowest              INT, 
			@DailyStartWorkSummary            DATETIME, 
			@DailyEndWorkSummary             DATETIME, 
			@MonthlyStartSentRequestMonthly  INT, 
			@MonthlySentRequestMonthlyBefore INT, 
			@MonthlyReminderBefore           INT, 
			@MonthlyStartDate                INT, 
			@MonthlyEndDate                  INT, 
			@Active                          BIT, 
			@CreatedDate                     DATETIME, 
			@CreatedBy                       INT
AS
     INSERT INTO ConfigWorker
     (DailySentWorkBefore, 
      DailySentDescriptionWorkBefore, 
	  DailyVerifyRecordBefore,
      DailySentOvertimeBefore, 
      OTAmountWorkLowest, 
      DailyStartWorkSummary, 
      DailyEndWorkSummary, 
	  MonthlyStartSentRequestMonthly  ,
	  MonthlySentRequestMonthlyBefore ,
	  MonthlyReminderBefore           ,
	  MonthlyStartDate                ,
	  MonthlyEndDate                  ,
	  Active                          ,
	  CreatedDate                     ,
	  CreatedBy   
	 )
     VALUES
     (@DailySentWorkBefore, 
      @DailySentDescriptionWorkBefore, 
	  @DailyVerifyRecordBefore,
      @DailySentOvertimeBefore, 
      @OTAmountWorkLowest, 
      @DailyStartWorkSummary, 
      @DailyEndWorkSummary, 
    @MonthlyStartSentRequestMonthly  ,
	@MonthlySentRequestMonthlyBefore ,
	@MonthlyReminderBefore           ,
	@MonthlyStartDate                ,
	@MonthlyEndDate                  ,
	@Active                          ,
	@CreatedDate                     ,
	@CreatedBy     
     );
GO
