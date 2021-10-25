SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ConfigWorker_UPDATE] 
	@ConfigId int,
	@DailySentWorkBefore	datetime		,
	@DailySentDescriptionWorkBefore	datetime			,
	@DailyVerifyRecordBefore   datetime,
	@DailySentOvertimeBefore	datetime			,
	@OTAmountWorkLowest	int						,
	@DailyStartWorkSummary	datetime		,
	@DailyEndWorkSummary	datetime	,
	@MonthlyStartSentRequestMonthly int,
	@MonthlySentRequestMonthlyBefore int,
	@MonthlyReminderBefore int,
	@MonthlyStartDate int,
	@MonthlyEndDate int,
	@Active bit,
	@ModifiedDate	datetime		,
	@ModifiedBy	int			
AS
     UPDATE ConfigWorker
       SET DailySentWorkBefore		= @DailySentWorkBefore,
		DailySentDescriptionWorkBefore				= @DailySentDescriptionWorkBefore,
		DailyVerifyRecordBefore   = @DailyVerifyRecordBefore,
		DailySentOvertimeBefore			= @DailySentOvertimeBefore,
		OTAmountWorkLowest				= @OTAmountWorkLowest,
		DailyStartWorkSummary		= @DailyStartWorkSummary,
		DailyEndWorkSummary			= @DailyEndWorkSummary,
		MonthlyStartSentRequestMonthly = @MonthlyStartSentRequestMonthly,
		MonthlySentRequestMonthlyBefore = @MonthlySentRequestMonthlyBefore,
		MonthlyReminderBefore = @MonthlyReminderBefore,
		MonthlyStartDate = @MonthlyStartDate,
		MonthlyEndDate = @MonthlyEndDate,
		Active = @Active,
		ModifiedDate		= @ModifiedDate,
		ModifiedBy			= @ModifiedBy
     WHERE ConfigId = @ConfigId;






GO
