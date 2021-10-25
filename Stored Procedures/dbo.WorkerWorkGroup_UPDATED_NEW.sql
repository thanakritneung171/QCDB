SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_UPDATED_NEW] 
-- Add the parameters for the stored procedure here
@WorkGroupId_In				 INT, 
@WorkGroupName_In		NVARCHAR(50), 
@WorkTypeId_In			INT,
@Active_In				BIT, 
@CreatedBy_In			INT
AS
BEGIN
		BEGIN TRY
		-- update 
	UPDATE dbo.WorkerWorkGroup
	SET
	WorkGroupName=@WorkGroupName_In,
	WorkTypeId=@WorkTypeId_In,
	Active=@Active_In,
	ModifiedBy=@CreatedBy_In,
	ModifiedDate=GETDATE()
	WHERE WorkGroupId=@WorkGroupId_In;
	
	

		SELECT	* from WorkerWorkGroupView Where WorkerWorkGroup_WorkGroupId= @WorkGroupId_In;



	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH


END
GO
