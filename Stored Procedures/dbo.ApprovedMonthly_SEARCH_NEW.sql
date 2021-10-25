SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_SEARCH_NEW] 
-- Add the parameters for the stored procedure here


	@ProjectStatus_In INT  = NULL,
	@MonthNumber_In int = NULL,
	@YearNumber_In int = NULL,
	@ProjectAll_Out int = 0   OUTPUT,  
	@ProjectWaitSend_Out int = 0   OUTPUT,  
	@ProjectWaitCheck_Out int = 0   OUTPUT,  
	@ProjectWaitApproved_Out int = 0   OUTPUT,  
	@ProjectApproved_Out int  = 0  OUTPUT
	AS
	BEGIN

	--set @ProjectStatus_In   = NULL;
	--set @MonthlyCode_In  = NULL;
	--set @ProjectCode_In  = NULL;
	--set @MonthNumber_In  = 9;
	--set @YearNumber_In  = 2021;
		

	IF (@ProjectStatus_In IS NOT NULL )
	BEGIN
		SELECT
            (
                SELECT COUNT(*)
                FROM dbo.ApprovedMonthlyDetailView Amd
                WHERE Amd.ApprovedMonthlyDetail_MonthlyCode = AppM.ApprovedMonthly_MonthlyCode
            ) AS AmountWorker,
            ISNULL(
            (
                SELECT SUM(Amd.ApprovedMonthlyDetail_Wage)
                FROM dbo.ApprovedMonthlyDetailView Amd
                WHERE Amd.ApprovedMonthlyDetail_MonthlyCode = AppM.ApprovedMonthly_MonthlyCode
            ),
            0
                  ) AS AmountWage,
            AppM.*,Pro.*
        FROM  ApprovedMonthlyView AppM
		   LEFT OUTER JOIN ProjectView Pro                ON Pro.Project_ProjectCode = AppM.ApprovedMonthly_ProjectCode
        WHERE AppM.ApprovedMonthly_MonthNumber = ISNULL(@MonthNumber_In, AppM.ApprovedMonthly_MonthNumber)
              AND AppM.ApprovedMonthly_YearNumber = ISNULL(@YearNumber_In, AppM.ApprovedMonthly_YearNumber)
              AND AppM.ApprovedMonthly_Status = ISNULL(@ProjectStatus_In, AppM.ApprovedMonthly_Status)
	END
ELSE 
	BEGIN
		SELECT *
FROM ProjectView PV
    LEFT JOIN
    (
        SELECT
            (
                SELECT COUNT(*)
                FROM dbo.ApprovedMonthlyDetailView Amd
                WHERE Amd.ApprovedMonthlyDetail_MonthlyCode = AppM.ApprovedMonthly_MonthlyCode
            ) AS AmountWorker,
            ISNULL(
            (
                SELECT SUM(Amd.ApprovedMonthlyDetail_Wage)
                FROM dbo.ApprovedMonthlyDetailView Amd
                WHERE Amd.ApprovedMonthlyDetail_MonthlyCode = AppM.ApprovedMonthly_MonthlyCode
            ),
            0
                  ) AS AmountWage,
            Pro.Project_ProjectCode,AppM.*
        FROM ProjectView Pro
            FULL OUTER JOIN ApprovedMonthlyView AppM
                ON Pro.Project_ProjectCode = AppM.ApprovedMonthly_ProjectCode
        WHERE AppM.ApprovedMonthly_MonthNumber = ISNULL(@MonthNumber_In, AppM.ApprovedMonthly_MonthNumber)
              AND AppM.ApprovedMonthly_YearNumber = ISNULL(@YearNumber_In, AppM.ApprovedMonthly_YearNumber)
              AND AppM.ApprovedMonthly_Status = ISNULL(@ProjectStatus_In, AppM.ApprovedMonthly_Status)
    ) dd
        ON dd.Project_ProjectCode = PV.Project_ProjectCode
ORDER BY PV.Project_ProjectName ASC;

	END








select @ProjectWaitSend_Out=COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where ApprovedMonthly_Status = 0
AND ApprovedMonthly_MonthNumber = @MonthNumber_In
AND ApprovedMonthly_YearNumber = @YearNumber_In


select @ProjectWaitCheck_Out=COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where ApprovedMonthly_Status = 1    
AND ApprovedMonthly_MonthNumber = @MonthNumber_In
AND ApprovedMonthly_YearNumber = @YearNumber_In


select @ProjectWaitApproved_Out=COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where ApprovedMonthly_Status = 2  
AND ApprovedMonthly_MonthNumber = @MonthNumber_In
AND ApprovedMonthly_YearNumber = @YearNumber_In


select @ProjectApproved_Out =COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where  ApprovedMonthly_Status = 3  
AND ApprovedMonthly_MonthNumber = @MonthNumber_In
AND ApprovedMonthly_YearNumber =@YearNumber_In

select @ProjectAll_Out =COUNT(ApprovedMonthly_Status)   from ApprovedMonthlyView where   ApprovedMonthly_MonthNumber = @MonthNumber_In
AND ApprovedMonthly_YearNumber =@YearNumber_In


		 -- select (select count(*) from dbo.ApprovedMonthlyDetailView Amd   where Amd.ApprovedMonthlyDetail_MonthlyCode=AppM.ApprovedMonthly_MonthlyCode ) as AmountWorker
		 --,ISNULL((select sum(Amd.ApprovedMonthlyDetail_Wage) from dbo.ApprovedMonthlyDetailView Amd   where Amd.ApprovedMonthlyDetail_MonthlyCode=AppM.ApprovedMonthly_MonthlyCode ),0) as AmountWage
		 --,* from ProjectView Pro
		 --FULL OUTER JOIN  ApprovedMonthlyView AppM  on  Pro.Project_ProjectCode = AppM.ApprovedMonthly_ProjectCode
		 --where  AppM.ApprovedMonthly_MonthNumber = ISNULL(@MonthNumber_In,AppM.ApprovedMonthly_MonthNumber) 
		 --AND AppM.ApprovedMonthly_YearNumber  = ISNULL(@YearNumber_In,AppM.ApprovedMonthly_YearNumber )
		 --AND AppM.ApprovedMonthly_MonthlyCode =  ISNULL(@MonthlyCode_In,AppM.ApprovedMonthly_MonthlyCode )
		 --AND AppM.ApprovedMonthly_ProjectCode =  ISNULL(@ProjectCode_In,AppM.ApprovedMonthly_ProjectCode )



END;

--select * from ApprovedMonthlyDetailView
GO
