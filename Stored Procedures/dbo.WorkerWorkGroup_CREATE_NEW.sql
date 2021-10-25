SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_CREATE_NEW] 
@WorkGroupName_In		NVARCHAR(50), 
@WorkTypeId_In			INT,
@Active_In				BIT, 
@CreatedBy_In			INT

AS
BEGIN
		BEGIN TRY
		-- insert update
	  INSERT INTO WorkerWorkGroup
     (WorkGroupName,
	 WorkTypeId,
	  Active,
      CreatedBy,
	  CreatedDate
	  )

     VALUES
     (@WorkGroupName_In, 
	  @WorkTypeId_In,
      @Active_In, 
	  @CreatedBy_In,
      GetDate()  
     )
	
	

		SELECT	* from WorkerWorkGroupView Where WorkerWorkGroup_WorkGroupId= @@IDENTITY;



	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
	
GO
