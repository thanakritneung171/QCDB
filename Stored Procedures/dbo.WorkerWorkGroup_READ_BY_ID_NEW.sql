SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_READ_BY_ID_NEW] 
-- Add the parameters for the stored procedure here
	@WorkGroupId_In INT  = 0
AS
BEGIN
		BEGIN TRY
	
		SELECT	* 
		FROM  [dbo].[WorkerWorkGroupView] 
		WHERE WorkerWorkGroup_WorkGroupId = @WorkGroupId_In
		END 
		
		TRY

		BEGIN CATCH
			SELECT MessageReturn = ERROR_MESSAGE();
		END CATCH


END
GO
