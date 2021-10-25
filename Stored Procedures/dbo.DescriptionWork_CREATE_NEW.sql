SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_CREATE_NEW] 
@DescriptionName_In			NVARCHAR(50), 
@WorkGroupId_In			INT,
@Active_In				BIT, 
@CreatedBy_In			INT

AS
BEGIN
		BEGIN TRY
		-- insert update
	  INSERT INTO DescriptionWork
     (DescriptionName,
	 WorkGroupId,
	 Active,
	 CreatedBy,
	 CreatedDate

	  )

     VALUES
     (@DescriptionName_In, 
      @WorkGroupId_In, 
	  @Active_In,
	  @CreatedBy_In,
      GetDate()  
     )
	
	

		SELECT	Descrip.*,WorkGroup.* from DescriptionWorkView  Descrip
		LEFT JOIN WorkerWorkGroupView  WorkGroup on Descrip.DescriptionWork_WorkGroupId = WorkGroup.WorkerWorkGroup_WorkGroupId
		Where DescriptionWork_DesId= @@IDENTITY;  



	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
GO
