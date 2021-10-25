SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Worker_SEARCH_NEW] 
-- Add the parameters for the stored procedure here


	@ProjectId_In INT  = NULL,
	@WorkerWorkStatus_In INT  = NULL,
	@WorkerActive_In BIT  = NULL,
	@Count_Out INT = 0 OUTPUT 
AS
BEGIN

			SELECT  WORK.Worker_WageId,Ww.Wage_WageId,WORK.*,PRO.*,WAP.*, ww.*
			FROM dbo.WorkerView WORK 		
						LEFT JOIN WorkAtProjectView WAP ON WORK.Worker_ProjectId = WAP.WorkAtProject_ProjectId
			LEFT JOIN ProjectView PRO ON WAP.WorkAtProject_ProjectCode = PRO.Project_ProjectCode
			LEFT JOIN dbo.WageView ww ON  ww.Wage_WorkerCode = WORK.Worker_WorkerCode AND WORK.Worker_WageId=ww.Wage_WageId
	WHERE  WORK.Worker_ProjectId  = ISNULL( @ProjectId_In,WORK.Worker_ProjectId )
			AND WORK.Worker_WorkStatus = ISNULL(@WorkerWorkStatus_In ,WORK.Worker_WorkStatus)
			AND WORK.Worker_Active = ISNULL(@WorkerActive_In ,WORK.Worker_Active)





	
END




	--	SELECT  Isnull(month(getdate()-Am.CreatedDate),0) as StatusMonthWageActive,WORK.Worker_WageId,Ww.Wage_WageId,WORK.*,PRO.*,WAP.*, ww.*
	--		FROM dbo.WorkerView WORK 		
	--					LEFT JOIN WorkAtProjectView WAP ON WORK.Worker_ProjectId = WAP.WorkAtProject_ProjectId
	--		LEFT JOIN ProjectView PRO ON WAP.WorkAtProject_ProjectCode = PRO.Project_ProjectCode
	--		LEFT JOIN dbo.WageView ww ON  ww.Wage_WorkerCode = WORK.Worker_WorkerCode AND WORK.Worker_WageId=ww.Wage_WageId
	--		  left join ApprovedMonthlyDetail Amd on Amd.WorkerCode =  WORK.Worker_WorkerCode
	--		left join ApprovedMonthly Am on Am.MonthlyCode =  Amd.MonthlyCode
	--WHERE  WORK.Worker_ProjectId  = ISNULL( @ProjectId_In,WORK.Worker_ProjectId )
	--		AND WORK.Worker_WorkStatus = ISNULL(@WorkerWorkStatus_In ,WORK.Worker_WorkStatus)
	--		AND WORK.Worker_Active = ISNULL(@WorkerActive_In ,WORK.Worker_Active)


--USE [KKN_Construction_TEST]
--GO
--/****** Object:  StoredProcedure [dbo].[Worker_SEARCH_NEW]    Script Date: 23/9/2564 22:00:11 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
---- =============================================
---- Author:		<Author,,Name>
---- Create date: <Create Date,,>
---- Description:	<Description,,>
---- =============================================
--ALTER PROCEDURE [dbo].[Worker_SEARCH_NEW] 
---- Add the parameters for the stored procedure here


--	@ProjectId_In INT  = NULL,
--	@WorkerWorkStatus_In INT  = NULL,
--	@WorkerActive_In BIT  = NULL,
--	@Count_Out INT = 0 OUTPUT 
--AS
--BEGIN
--		--DECLARE @Sql NVARCHAR(MAX);
--		--DECLARE @StWhere NVARCHAR(MAX);
--		--DECLARE @FirstName_In nvarchar(100);
--		--SET  @FirstName_In = 'จ';
		
--		--SELECT	*  FROM  [dbo].[WorkerWageView] WHERE Worker_FirstName LIKE '%'+ @FirstName_In +'%';


	

--		SELECT  Isnull(month(getdate()-Am.CreatedDate),0) as StatusMonthWageActive,WORK.Worker_WageId,Ww.Wage_WageId,WORK.*,PRO.*,WAP.*, WA.*, ww.Wage_WageId,ww.Wage_WorkerCode,
--                                             ww.Wage_StartDate,
--                                             ww.Wage_Active,
--                                             ww.Wage_ApprovedDate,
--                                             ww.Wage_ApprovedBy,
--                                             ww.Wage_CreatedDate,
--                                             ww.Wage_CreatedBy,
--                                             ww.Wage_ModifiedDate,
--                                             ww.Wage_ModifiedBy
--			FROM dbo.WorkerView WORK 
--			OUTER APPLY (SELECT top 1 Wage_Wage  
--				from [dbo].[WageView] W 
--				where W.Wage_WorkerCode = WORK.Worker_WorkerCode 
--				And W.Wage_StartDate <= GETDATE()
--				AND W.Wage_Active = 1 
--			ORDER BY W.Wage_WageId DESC ) AS WA		
--						LEFT JOIN WorkAtProjectView WAP ON WORK.Worker_ProjectId = WAP.WorkAtProject_ProjectId
--			LEFT JOIN ProjectView PRO ON WAP.WorkAtProject_ProjectCode = PRO.Project_ProjectCode
--			LEFT JOIN dbo.WageView ww ON  ww.Wage_WorkerCode = WORK.Worker_WorkerCode AND WORK.Worker_WageId=ww.Wage_WageId
--			  left join ApprovedMonthlyDetail Amd on Amd.WorkerCode =  WORK.Worker_WorkerCode
--			left join ApprovedMonthly Am on Am.MonthlyCode =  Amd.MonthlyCode
--	WHERE  WORK.Worker_ProjectId  = ISNULL( @ProjectId_In,WORK.Worker_ProjectId )
--			AND WORK.Worker_WorkStatus = ISNULL(@WorkerWorkStatus_In ,WORK.Worker_WorkStatus)
--			AND WORK.Worker_Active = ISNULL(@WorkerActive_In ,WORK.Worker_Active)

	
--END
GO
