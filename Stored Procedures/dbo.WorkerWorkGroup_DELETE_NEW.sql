SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================

-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_DELETE_NEW] 
-- Add the parameters for the stored procedure here
@WorkGroupId_In					INT, 
@WorkGroupName_In		NVARCHAR(50), 
@Active_In				BIT, 
@CreatedBy_In			INT

AS

BEGIN
		BEGIN TRY
		-- update 
		UPDATE WorkerWorkGroup
		SET 
		WorkGroupName=@WorkGroupName_In,
		Active=@Active_In,
		ModifiedBy=@CreatedBy_In,
		ModifiedDate=GETDATE()
		WHERE WorkGroupId=@WorkGroupId_In;

	SELECT * FROM  WorkerWorkGroupView WHERE WorkerWorkGroup_WorkGroupId=@WorkGroupId_In;

	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
	
GO
