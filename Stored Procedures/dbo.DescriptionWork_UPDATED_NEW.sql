SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_UPDATED_NEW] 
-- Add the parameters for the stored procedure here
@DescriptionWork_DesId_In					INT, 
@DescriptionName_In			NVARCHAR(50), 
@WorkGroupId_In			INT,
@Active_In				BIT, 
@CreatedBy_In			INT

AS
BEGIN
		BEGIN TRY
		-- update 
	UPDATE dbo.DescriptionWork
	SET
		 DescriptionName=@DescriptionName_In,
		 WorkGroupId=@WorkGroupId_In,
		 Active=@Active_In,
		 ModifiedBy=@CreatedBy_In,
		 ModifiedDate=GETDATE()
	WHERE DesId=@DescriptionWork_DesId_In;
	
		

		SELECT	Descrip.*,WorkGroup.* from DescriptionWorkView  Descrip
		LEFT JOIN WorkerWorkGroupView  WorkGroup on Descrip.DescriptionWork_WorkGroupId = WorkGroup.WorkerWorkGroup_WorkGroupId
		Where DescriptionWork_DesId= @DescriptionWork_DesId_In;



	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH


END
GO
