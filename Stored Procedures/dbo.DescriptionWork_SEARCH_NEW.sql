SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_SEARCH_NEW] 
-- Add the parameters for the stored procedure here
	@DescriptionName_In nvarchar(100)  = NULL,
	@WorkGroupId_In int  = NULL,
	@DescriptionWork_Active_In BIT  = 0,
	@Count_Out INT  OUTPUT


AS



BEGIN
			SET @DescriptionName_In = ISNULL(@DescriptionName_In,'');

		BEGIN TRY
		SELECT	Dwv.*, Wgv.*
		FROM  [dbo].[DescriptionWorkView]  Dwv
		Left join  [dbo].[WorkerWorkGroupView] Wgv   on Wgv.WorkerWorkGroup_WorkGroupId = Dwv.DescriptionWork_WorkGroupId
		WHERE DescriptionWork_DescriptionName   
		LIKE N'%'+@DescriptionName_In+'%' 
		AND Dwv.DescriptionWork_Active = @DescriptionWork_Active_In AND 
		  ISNULL(Dwv.DescriptionWork_WorkGroupId,0) = ISNULL(@WorkGroupId_In,ISNULL(Dwv.DescriptionWork_WorkGroupId,0)) 
		--or Dwv.DescriptionWork_WorkGroupId IS not NULL
		--or Dwv.DescriptionWork_WorkGroupId = @WorkGroupId_In
	

	

	SELECT @Count_Out = @@ROWCOUNT;

	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
GO
