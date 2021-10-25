SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkAtProject_UPDATE] 
	@ProjectId int,
	@WorkerCode	varchar(10)			,
	@ProjectCode varchar(10)		,
	@StartDate	datetime			,
	@Active	bit						,
	@ModifiedBy	int			
AS
     UPDATE WorkAtProject
       SET WorkerCode		= @WorkerCode,
		ProjectCode			= @ProjectCode,
		StartDate			= @StartDate,
		Active				= @Active,
		ModifiedDate		= GETDATE(),
		ModifiedBy			= @ModifiedBy
     WHERE ProjectId = @ProjectId;






	 	SELECT * from WorkAtProject where ProjectId= @ProjectId


GO
