SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_SEARCH_BY_NAME] 
-- Add the parameters for the stored procedure here
	@WorkGroupName_In nvarchar(100)  = NULL

AS
BEGIN

	

				SELECT * from WorkerWorkGroupView WGV where  WGV.WorkerWorkGroup_WorkGroupName = @WorkGroupName_In;
							   				 			  			  

	
END
GO
