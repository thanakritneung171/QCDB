SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_GET_BY_WORKTYPEID] 
-- Add the parameters for the stored procedure here
	@WorkTypeId_In int = null

AS

BEGIN
			 
			 select * from WorkerWorkGroupView 
			 where  WorkerWorkGroup_WorkTypeId=@WorkTypeId_In
			 	 AND WorkerWorkGroup_Active= 1


	--SELECT	* 
	--	FROM  [dbo].[WorkerWorkGroupView] 
	--	WHERE    
	--	 WorkerWorkGroup_WorkTypeId = ISNULL(@WorkTypeId_In,WorkerWorkGroup_WorkTypeId)
	--	 AND WorkerWorkGroup_Active= 1
	



	END


GO
