SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_CREATE_NEW] 


	-- Add the parameters for the stored procedure here
	@MonthlyCode	varchar(20)			,
	@WorkerCode	varchar(10)			,
	@WorkType    int			,
	@WorkGroup	int						,
	@Description  nvarchar(255),
	@Owner		nvarchar(50),
	@Holiday  nvarchar(50),
	@Wage decimal(10,2),
	@Remark  nvarchar(255),
	@DescriptionId int,
	@DescriptionOther nvarchar(255),
	@HolidayId int,
	@HolidayOther nvarchar(255),
	@WagePerMonthly decimal(10,2)

	AS
	
	declare @countMonthlyDetail int =0;
	
	
	
	
	INSERT INTO ApprovedMonthlyDetail(
	MonthlyCode,
	WorkerCode,
	WorkType,
	WorkGroup,
	Description,
	Owner,
	Holiday,
	Wage,
	Remark,
	DescriptionId,
	DescriptionOther,
	HolidayId,
	HolidayOther,
	WagePerMonthly
	)
	VALUES(@MonthlyCode,
	@WorkerCode			,
	@WorkType		,
	@WorkGroup			,
	@Description	,
	@Owner		,
	@Holiday	,
	@Wage		,
	@Remark	,
	@DescriptionId,
	@DescriptionOther,
	@HolidayId,
	@HolidayOther,
	@WagePerMonthly
	);

	
 select  @countMonthlyDetail= COUNT(MonthlyDetailId)from ApprovedMonthlyDetail where MonthlyCode=@MonthlyCode

  update ApprovedMonthly  set TotalWorker=@countMonthlyDetail where   MonthlyCode=@MonthlyCode



			 SELECT AMV.*,DEV.*,WWG.*,HDV.*,WK.*,UV.* FROM ApprovedMonthlyDetailView AMV
			LEFT JOIN DescriptionWorkView  DEV
			ON AMV.ApprovedMonthlyDetail_DescriptionId = DEV.DescriptionWork_DesId
			LEFT JOIN dbo.WorkerWorkGroupView WWG
			ON DEV.DescriptionWork_WorkGroupId = WWG.WorkerWorkGroup_WorkGroupId
			LEFT JOIN HolidayTypeView  HDV
			ON AMV.ApprovedMonthlyDetail_HolidayId = HDV.HolidayType_Id		
				LEFT JOIN WorkerView  Wk
			ON WK.Worker_WorkerCode = AMV.ApprovedMonthlyDetail_WorkerCode	
				LEFT JOIN UserView  UV
			ON UV.Employee_UserName = AMV.ApprovedMonthlyDetail_Owner	
			WHERE AMV.ApprovedMonthlyDetail_MonthlyDetailId = @@IDENTITY;
	     --SELECT SCOPE_IDENTITY() AS MonthlyDetailId;


GO
