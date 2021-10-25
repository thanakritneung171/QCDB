SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATED_NEW] 
-- Add the parameters for the stored procedure here
@MonthlyCode_In			 VARCHAR(20), 
@TotalWorker_In			int, 
@StartDate_In           datetime, 
@EndDate_In				datetime, 
@Status_In				int, 
@ApprovedDate_In        datetime, 
@ApprovedBy_In          int, 
@ModifiedBy_In          int

AS
BEGIN
		BEGIN TRY
		-- update 
		Update  ApprovedMonthly Set 
			TotalWorker=@TotalWorker_In,
			StartDate=@StartDate_In,
			EndDate=@EndDate_In,
			Status=@Status_In,
			ApprovedDate=@ApprovedDate_In,
			ApprovedBy=@ApprovedBy_In,
			ModifiedDate=GETDATE(),
			ModifiedBy=@ModifiedBy_In
		WHERE MonthlyCode= @MonthlyCode_In; 
		


		select AppM.*,PRO.* from ApprovedMonthlyView AppM
		left join ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
		where   AppM.ApprovedMonthly_MonthlyCode = @MonthlyCode_In





	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH

END
GO
