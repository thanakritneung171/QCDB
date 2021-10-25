SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_SEARCH_NEW] 
-- Add the parameters for the stored procedure here
	@WorkerWorkGroupName_In nvarchar(100)  = '',
	@WorkTypeId_In int = null,
	@WorkerWorkGroupActive_In BIT  = 0,
	@Count_Out INT  OUTPUT

AS

BEGIN
		BEGIN TRY

			SET @WorkerWorkGroupName_In = ISNULL(@WorkerWorkGroupName_In,'');



	SELECT	* 
		FROM  [dbo].[WorkerWorkGroupView] 
		WHERE WorkerWorkGroup_WorkGroupName   
		LIKE '%'+@WorkerWorkGroupName_In+'%' 
		AND WorkerWorkGroup_Active= @WorkerWorkGroupActive_In
		AND WorkerWorkGroup_WorkTypeId = ISNULL(@WorkTypeId_In,WorkerWorkGroup_WorkTypeId);
	






	SELECT @Count_Out = @@ROWCOUNT;


	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
GO
