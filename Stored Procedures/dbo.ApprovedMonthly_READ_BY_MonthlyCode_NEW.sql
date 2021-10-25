SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_READ_BY_MonthlyCode_NEW] 
-- Add the parameters for the stored procedure here
	@MonthlyCode_In varchar(20) = NULL
	AS
	BEGIN
		
		
		--DECLARE @MonthlyCode_In varchar(20) = 'AP082021/P008';


		select AppM.*,PRO.* from ApprovedMonthlyView AppM
		left join ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
where   (AppM.ApprovedMonthly_MonthlyCode = @MonthlyCode_In OR  AppM.ApprovedMonthly_MonthlyCode IS NULL)


END
GO
