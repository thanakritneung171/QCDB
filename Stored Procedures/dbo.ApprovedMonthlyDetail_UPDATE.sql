SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_UPDATE] 
			@MonthlyDetailId int,
			@MonthlyCode	varchar(20)			,
			@WorkerCode	varchar(10)			,
			@WorkType    int			,
			@WorkGroup	int						,
			@Description  nvarchar(255),
			@Owner		nvarchar(50),
			@Holiday  nvarchar(50),
			@Wage decimal(10,2),
			@Remark  nvarchar(255)	
AS
     UPDATE ApprovedMonthlyDetail
       SET 
		MonthlyCode		= @MonthlyCode,
		WorkerCode			= @WorkerCode,
		WorkType			= @WorkType,
		WorkGroup			= @WorkGroup,
		Description		= @Description,
		Owner				= @Owner,
		Holiday			= @Holiday,
		Wage				= @Wage,
		Remark				= @Remark
     WHERE MonthlyDetailId = @MonthlyDetailId;






GO
