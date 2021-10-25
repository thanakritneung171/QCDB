SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_UPDATED_NEW] 
			@MonthlyDetailId int,
			@MonthlyCode	varchar(20)			,
			@WorkerCode	varchar(10)			,
			@WorkType    int			,
			@WorkGroup	int						,
			@Description  nvarchar(255),
			@Owner		nvarchar(50),
			@Holiday  nvarchar(50),
			@Wage decimal(10,2),
			@Remark  nvarchar(255)	,	
			@DescriptionId int,
			@DescriptionOther nvarchar(255),
			@HolidayId int,
			@HolidayOther nvarchar(255),
			@WagePerMonthly decimal(10,2)
AS
     UPDATE ApprovedMonthlyDetail
       SET 
		MonthlyCode		    = @MonthlyCode,
		WorkerCode			= @WorkerCode,
		WorkType			= @WorkType,
		WorkGroup			= @WorkGroup,
		Description			= @Description,
		Owner				= @Owner,
		Holiday				= @Holiday,
		Wage				= @Wage,
		Remark				= @Remark,
		DescriptionId		= @DescriptionId,
		DescriptionOther	= @DescriptionOther,
		HolidayId			= @HolidayId ,
		HolidayOther		= @HolidayOther,
		WagePerMonthly		=@WagePerMonthly
     WHERE MonthlyDetailId = @MonthlyDetailId;



	 SELECT AMV.*,DEV.*,WWG.*,HDV.*,Us.*,WV.* FROM ApprovedMonthlyDetailView AMV
			LEFT JOIN DescriptionWorkView  DEV
			ON AMV.ApprovedMonthlyDetail_DescriptionId = DEV.DescriptionWork_DesId
			LEFT JOIN dbo.WorkerWorkGroupView WWG
			ON DEV.DescriptionWork_WorkGroupId = WWG.WorkerWorkGroup_WorkGroupId
			LEFT JOIN HolidayTypeView  HDV
			ON AMV.ApprovedMonthlyDetail_HolidayId = HDV.HolidayType_Id
			LEFT JOIN UserView  Us on Us.Employee_UserName  COLLATE SQL_Latin1_General_CP1_CI_AS = AMV.ApprovedMonthlyDetail_Owner
			LEFT JOIN WorkerView  WV
			ON WV.Worker_WorkerCode = AMV.ApprovedMonthlyDetail_WorkerCode
			WHERE AMV.ApprovedMonthlyDetail_MonthlyDetailId = 	@MonthlyDetailId ;




GO
