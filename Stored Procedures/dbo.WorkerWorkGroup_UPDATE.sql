SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkerWorkGroup_UPDATE] 
	@WorkGroupId int,
	@WorkGroupName	nvarchar(50)		,
	@Active	bit			,
	@ModifiedDate	datetime		,
	@ModifiedBy	int			
AS
     UPDATE WorkerWorkGroup
       SET WorkGroupName		= @WorkGroupName,
		Active				= @Active,
		ModifiedDate		= @ModifiedDate,
		ModifiedBy			= @ModifiedBy
     WHERE WorkGroupId = @WorkGroupId;






GO
