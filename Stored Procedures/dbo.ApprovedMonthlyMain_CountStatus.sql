SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyMain_CountStatus] 
-- Add the parameters for the stored procedure here
	@MonthNumber_In int = NULL,
	@YearNumber_In int = NULL,
	@CountProjectAll_Out int = 0   OUTPUT,  
	@CountProjectWaitApproved_Out int = 0   OUTPUT,  
	@CountProjectApproved_Out int = 0   OUTPUT,  
	@CountMonthly_Out int = 0   OUTPUT,  
	@Countdaily_Out int  = 0  OUTPUT
	AS
	BEGIN


	select @Countdaily_Out= COUNT(DailyCode) from RecordWorking where  Date = getdate()

	select @CountProjectAll_Out  =COUNT(ApprovedMonthly_Status), @CountMonthly_Out =COUNT(ApprovedMonthly_Status)  from ApprovedMonthlyView where   ApprovedMonthly_MonthNumber = @MonthNumber_In
	AND ApprovedMonthly_YearNumber =@YearNumber_In


	select @CountProjectWaitApproved_Out=COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where ApprovedMonthly_Status = 2  
	AND ApprovedMonthly_MonthNumber = @MonthNumber_In
	AND ApprovedMonthly_YearNumber = @YearNumber_In

	select @CountProjectApproved_Out =COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where  ApprovedMonthly_Status = 3  
	AND ApprovedMonthly_MonthNumber = @MonthNumber_In
	AND ApprovedMonthly_YearNumber =@YearNumber_In


	select ApprovedMonthly_MonthlyCode from ApprovedMonthlyView where ApprovedMonthly_MonthNumber = @MonthNumber_In
	AND ApprovedMonthly_YearNumber =@YearNumber_In




END;
GO
