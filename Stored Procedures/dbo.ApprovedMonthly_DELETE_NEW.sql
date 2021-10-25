SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_DELETE_NEW] 
-- Add the parameters for the stored procedure here
@MonthlyCode_In			VARCHAR(20)
--, 
--@ModifiedBy_In       int

AS
BEGIN
		BEGIN TRY

		-- update 
		--Update  ApprovedMonthly Set 
		--	Status=0,
		--	ModifiedDate=GETDATE(),
		--	ModifiedBy=@ModifiedBy_In
		--WHERE MonthlyCode= @MonthlyCode_In; 

	
		DELETE ApprovedMonthlyDetail 
		WHERE  MonthlyCode = @MonthlyCode_In

			DELETE ApprovedMonthly 
		WHERE  MonthlyCode = @MonthlyCode_In
		

		SELECT AppM.*,PRO.* from ApprovedMonthlyView AppM
		LEFT JOIN ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
		WHERE   AppM.ApprovedMonthly_MonthlyCode = @MonthlyCode_In





	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH


END
GO
