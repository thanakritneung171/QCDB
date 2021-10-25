SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_Request_NEW] 
-- Add the parameters for the stored procedure here
	@MonthlyCode varchar(20) = NULL,
    @ProjectCode varchar(20) = NULL

		--กรณีไม่มี MonthlyCode สร้างใหม่เช็ค วันที่สร้าง


	AS
	BEGIN

		--DECLARE @MonthlyCode Nvarchar(20) = NULL

		--DECLARE @ProjectCode Nvarchar(20) = null ;

		DECLARE @DayOfMonth int = 0 ;
		DECLARE @Month int = 0 ;
		DECLARE @Year int = 0 ;
		DECLARE @DayOfConfigWorkerStart int = 0 ;
		DECLARE @DayOfConfigWorkerBelated int = 0 ;
		
		
		set @DayOfMonth = DAY(GETDATE());
		set @Month = MONTH(GETDATE());
		set @Year = YEAR(GETDATE());

		--set @MonthlyCode = 'AP092021/P002';

		--set @ProjectCode='P002';
		--set @DayOfMonth = 10;


		select @DayOfConfigWorkerStart=MonthlyStartSentRequestMonthly,@DayOfConfigWorkerBelated=MonthlySentRequestMonthlyBefore
		from ConfigWorker 
		where Active=1

		PRINT 'this M = '+CAST(@Month as varchar(10));

			if (LEN(@MonthlyCode) >0)
		BEGIN
					PRINT 'Have MonthlyCode';

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

					where ad.MonthlyCode=@MonthlyCode  --AND am.ApprovedBy IS NOT NULL  am.ApprovedBy IS NOT NULL   ใส่เพิ่มกรณี อ้างอิง จะต้องผ่านอนุมัติก่อน
					UNION
						select 
					NULL as MonthlyCode ,
					NULL as ProjectCode,
					0 as Status,
					NULL as MonthlyDetailId,
					wk.WorkerCode,
					wk.Title + wk.FirstName + wk.LastName as WorkerName,
					w.Wage,				
					NULL as HolidayName,
					NULL as HolidayOther,
					NULL as UnitName,
					NULL as DescriptionName,
					NULL as DescriptionOther,
					3 as WorkType,
					0 as WorkGroup,
					NULL as WorkGroupName,
					NULL as Owner,
					NULL as Remark,
					NULL as EmployeesName,
					wk.Active
					from Worker  wk
					left join WorkAtProject wa on wa.ProjectId = wk.ProjectId 
					left join Wage w on w.WageId = wk.WageId
					where wa.ProjectCode = @ProjectCode
					AND wk.Active = 1 
					AND wa.WorkerCode 
					not in (select WorkerCode from ApprovedMonthlyDetail  ad 
					where ad.MonthlyCode = @MonthlyCode)




		END
			ELSE    
				BEGIN
					PRINT 'No MonthlyCode';
			--ถ้าวันที่ สร้าง >= วันที่ ที่ตั้งค่าไว้
		IF (@DayOfMonth>= @DayOfConfigWorkerStart)
			BEGIN
				PRINT 'this NextM = '+CAST(@Month+1 as varchar(10)) ;
					SET @Month = @Month

			END
			--ภายในเดือน ยังไม่ถึง วันที่ ที่ตั้งค่าไว้
		ELSE    
			BEGIN
				PRINT 'this M-1 = '+CAST(@Month-1 as varchar(10));
				SET @Month = @Month-1 		

			END
			
				PRINT 'this Month For SQL = '+CAST(@Month as varchar(10)) ;

			select 
					am.MonthlyCode,
					am.ProjectCode,
					am.Status,
					ad.WorkerCode,
					ad.MonthlyDetailId,
					wk.Title+wk.FirstName+wk.LastName as WorkerName, 
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
					where am.MonthNumber=@Month AND am.YearNumber=@Year AND am.ProjectCode=@ProjectCode  --AND am.ApprovedBy IS NOT NULL
						
						UNION

					select 
						NULL as MonthlyCode ,
						NULL as ProjectCode,
						0 as Status,
						wk.WorkerCode,
						NULL as MonthlyDetailId,
						wk.Title + wk.FirstName + wk.LastName as WorkerName,
						w.Wage,				
						NULL as HolidayName,
						NULL as HolidayOther,
						NULL as UnitName,
						NULL as DescriptionName,
						NULL as DescriptionOther,
						3 as WorkType,
						0 as WorkGroup,
						NULL as WorkGroupName,
						NULL as Owner,
						NULL as Remark,
						NULL as EmployeesName,
						wk.Active
						from Worker  wk
						left join WorkAtProject wa on wa.ProjectId = wk.ProjectId 
						left join Wage w on w.WageId = wk.WageId
						where wa.ProjectCode = @ProjectCode
						AND wk.Active = 1 
						AND wa.WorkerCode 
						not in (select WorkerCode from ApprovedMonthlyDetail  ad
						Left join ApprovedMonthly am on am.MonthlyCode=ad.MonthlyCode
						where am.MonthNumber=@Month AND am.YearNumber=@Year)
			

		END	

				

		PRINT 'this DayOfMonth = '+CAST(@DayOfMonth as varchar(10)) ;  
		PRINT 'this Month = '+CAST(@Month as varchar(10));  
		PRINT 'this Year = '+CAST(@Year as varchar(10));  


		PRINT 'this DayOfConfigWorkerStart = '+CAST(@DayOfConfigWorkerStart as varchar(10));  
		PRINT 'this DayOfConfigWorkerBelated = '+CAST(@DayOfConfigWorkerBelated as varchar(10));  
		


		

		

END
GO
