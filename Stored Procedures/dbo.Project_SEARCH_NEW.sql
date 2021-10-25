SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Project_SEARCH_NEW] 
-- Add the parameters for the stored procedure here
	@ProjectCode_In NVARCHAR(10) =  '' ,
	@Active_In int = 1 ,
	@Count_Out INT OUTPUT


AS

	--if(@ProjectCode_In = 'NULL')
 --       begin
 --         	SET @ProjectCode_In = '';
 --       END
        

	

	--   SELECT LEN(@ProjectCode_In);

		SELECT	* 
		FROM  [dbo].ProjectView 
		WHERE Project_ProjectCode LIKE '%'+@ProjectCode_In+'%'  AND Project_Active=@Active_In
	
	
	SELECT @Count_Out = @@ROWCOUNT;
GO
