SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_READ_BY_ID_NEW] 
-- Add the parameters for the stored procedure here
	@DescriptionWork_DesId_In INT  = 0
AS
BEGIN
		BEGIN TRY
	
		SELECT	Descrip.* ,WorkGroup.*
		FROM  [dbo].[DescriptionWorkView] Descrip
		LEFT JOIN WorkerWorkGroupView  WorkGroup on Descrip.DescriptionWork_WorkGroupId = WorkGroup.WorkerWorkGroup_WorkGroupId
		WHERE DescriptionWork_DesId = @DescriptionWork_DesId_In
		END 
		
		TRY

		BEGIN CATCH
			SELECT MessageReturn = ERROR_MESSAGE();
		END CATCH


END
GO
