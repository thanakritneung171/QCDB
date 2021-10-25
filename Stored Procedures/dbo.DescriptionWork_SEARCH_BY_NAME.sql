SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_SEARCH_BY_NAME] 
-- Add the parameters for the stored procedure here
	@DescriptionName_In nvarchar(100)  = NULL,
	@WorkGroupId_In int = 0


AS
BEGIN

	SELECT * from DescriptionWorkView DESW
	LEFT JOIN WorkerWorkGroupView WGV on  WGV.WorkerWorkGroup_WorkGroupId  = DESW.DescriptionWork_WorkGroupId
	where   DESW.DescriptionWork_WorkGroupId=@WorkGroupId_In AND DESW.DescriptionWork_DescriptionName = @DescriptionName_In 
							   				 			  			  
	
END
GO
