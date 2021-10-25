SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_GET_BY_MonthlyDetailIdString] 
-- Add the parameters for the stored procedure here

-- Add the parameters for the stored procedure here
@MonthlyDetailIdString   VARCHAR(300)

as

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
		WHERE  ApprovedMonthlyDetail_MonthlyDetailId in (select value from STRING_SPLIT(@MonthlyDetailIdString,',') );



		

GO
