SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_READ_BY_MonthNumber] 
-- Add the parameters for the stored procedure here
	@MonthNumber int = NULL,
	@YearNumber int = NULL,
	@ProjectCode nvarchar(10) = NULL

	
	AS
	BEGIN
		
		
		--DECLARE @MonthlyCode_In varchar(20) = 'AP082021/P008';


		select AppM.*,PRO.* from ApprovedMonthlyView AppM
		left join ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
where   AppM.ApprovedMonthly_MonthNumber = @MonthNumber AND AppM.ApprovedMonthly_YearNumber=@YearNumber AND AppM.ApprovedMonthly_ProjectCode=@ProjectCode


END
GO
