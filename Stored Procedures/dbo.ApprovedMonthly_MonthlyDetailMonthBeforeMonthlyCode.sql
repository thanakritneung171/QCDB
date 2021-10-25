SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_MonthlyDetailMonthBeforeMonthlyCode] 
-- Add the parameters for the stored procedure here
	@MonthlyCode varchar(20) = NULL

	AS
	BEGIN

						select 
					am.MonthlyCode,
					am.ProjectCode,
					am.Status,
					ad.MonthlyDetailId,
					ad.WorkerCode,
					wk.Title + wk.FirstName + wk.LastName as WorkerName, 
					w.Wage,
					h.HolidayName,
					ad.HolidayOther,
					Wl.UnitName,
					De.DescriptionName,
					ad.DescriptionOther,
					ad.WorkType,
					ad.WorkGroup,
					wwk.WorkGroupName,
					ad.Owner,
					ad.Remark,
					us.Employee_Title+us.Employee_FirstName+us.Employee_LastName + '('+Employee_NickName+ ')' as EmployeesName,
					 1 as Active
					from ApprovedMonthlyDetail ad
					left join ApprovedMonthly am on am.MonthlyCode = ad.MonthlyCode
					left join Worker wk on wk.WorkerCode = ad.WorkerCode
					left join Wage w on w.WageId = wk.WageId
					left join HolidayType H on h.Id = ad.HolidayId
					left join WorkLocation Wl on Wl.MonthlyDetailId = ad.MonthlyDetailId
					left join DescriptionWork De on de.DesId = ad.DescriptionId
					left join WorkerWorkGroup wwk on wwk.WorkGroupId = ad.WorkGroup
					LEFT JOIN UserView us on us.Employee_UserName = ad.Owner
					where ad.MonthlyCode=@MonthlyCode
			END
GO
