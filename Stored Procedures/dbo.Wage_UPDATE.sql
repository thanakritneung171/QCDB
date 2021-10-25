SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Wage_UPDATE] 
	@WageId int,
	@WorkerCode	varchar(10)			,
	@Wage	decimal(10, 2)			,
	@StartDate	datetime			,
	@Active	bit						,
	@ApprovedDate	datetime		,
	@ApprovedBy	int					,
	@ModifiedDate	datetime		,
	@ModifiedBy	int			
AS
     UPDATE Wage
       SET WorkerCode		= @WorkerCode,
		Wage				= @Wage,
		StartDate			= @StartDate,
		Active				= @Active,
		ApprovedDate		= @ApprovedDate,
		ApprovedBy			= @ApprovedBy,
		ModifiedDate		= @ModifiedDate,
		ModifiedBy			= @ModifiedBy
     WHERE WageId = @WageId;






GO
