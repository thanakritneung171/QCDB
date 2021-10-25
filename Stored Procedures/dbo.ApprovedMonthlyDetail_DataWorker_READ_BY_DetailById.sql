SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_DataWorker_READ_BY_DetailById] 
-- Add the parameters for the stored procedure here
	@MonthlyDetailId int = NULL

	

	AS
	BEGIN

	select AD.MonthlyDetailId,AD.MonthlyCode,AD.WorkerCode,AD.WorkType,AD.WorkGroup,WWK.WorkGroupId,WWK.WorkGroupName,
	AD.Description,AD.DescriptionId,DE.DescriptionName,AD.DescriptionOther,AD.Holiday,AD.HolidayId,
	H.HolidayName,AD.HolidayOther,AD.Wage,AD.Remark,WL.UnitId,WL.UnitName,
	Ad.Owner,US.UserProfile_UserId,US.UserProfile_Name,US.Employee_FirstName,US.Employee_LastName,US.Employee_NickName
	from ApprovedMonthlyDetail   AD
	left join HolidayType H on H.Id = AD.HolidayId
	left join WorkLocation WL on WL.MonthlyDetailId = AD.MonthlyDetailId
	left join DescriptionWork DE on DE.DesId = AD.DescriptionId
	left join WorkerWorkGroup WWK on WWK.WorkGroupId = AD.WorkGroup
	LEFT JOIN UserView US on US.Employee_UserName = AD.Owner
	where ad.MonthlyDetailId=@MonthlyDetailId



		

		

END
GO
