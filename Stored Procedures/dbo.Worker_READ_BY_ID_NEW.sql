SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_READ_BY_ID_NEW] 
-- Add the parameters for the stored procedure here
	@WorkerCode_In nvarchar(20)  = NULL
AS
BEGIN
		BEGIN TRY
	
				SELECT 0 as StatusMonthWageActive,WORK.*,PRO.*, WA.*,WAP.*, ww.Wage_WageId,ww.Wage_WorkerCode,
                                             ww.Wage_StartDate,
                                             ww.Wage_Active,
                                             ww.Wage_ApprovedDate,
                                             ww.Wage_ApprovedBy,
                                             ww.Wage_CreatedDate,
                                             ww.Wage_CreatedBy,
                                             ww.Wage_ModifiedDate,
                                             ww.Wage_ModifiedBy
			FROM dbo.WorkerView WORK 
			OUTER APPLY (SELECT top 1 Wage_Wage  
				from [dbo].[WageView] W 
				where W.Wage_WorkerCode = WORK.Worker_WorkerCode 
				And W.Wage_StartDate <= GETDATE()
				AND W.Wage_Active = 1 
			ORDER BY W.Wage_WageId DESC ) AS WA		
			LEFT JOIN WorkAtProjectView WAP ON WORK.Worker_ProjectId = WAP.WorkAtProject_ProjectId
			LEFT JOIN ProjectView PRO ON WAP.WorkAtProject_ProjectCode = PRO.Project_ProjectCode
			LEFT JOIN dbo.WageView ww ON  ww.Wage_WorkerCode = WORK.Worker_WorkerCode 
		WHERE  Worker_WorkerCode = @WorkerCode_In
		END 
		
		TRY

		BEGIN CATCH
			SELECT MessageReturn = ERROR_MESSAGE();
		END CATCH


END
GO
