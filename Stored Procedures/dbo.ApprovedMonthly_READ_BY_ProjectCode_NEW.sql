SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_READ_BY_ProjectCode_NEW] 
-- Add the parameters for the stored procedure here


	@ProjectCode_In varchar(20) = NULL
	AS
	BEGIN
		
	select AppM.*,PRO.* from ApprovedMonthlyView AppM
		left join ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
	where   (AppM.ApprovedMonthly_ProjectCode = @ProjectCode_In OR @ProjectCode_In IS NULL)



END
GO
