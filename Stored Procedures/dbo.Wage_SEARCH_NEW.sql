SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wage_SEARCH_NEW] 
-- Add the parameters for the stored procedure here
	@WorkerCode_In NVARCHAR(10) = NULL ,
	@Active_In int = 0 ,
	@Count_Out INT OUTPUT
AS



--BEGIN
--		BEGIN TRY

		IF(@Active_In=1)
			BEGIN

					SELECT	* 
					FROM  [dbo].[WageView] 
					WHERE Wage_WorkerCode = @WorkerCode_In
					ORDER BY Wage_StartDate DESC, Wage_CreatedDate DESC
			END
		IF(@Active_In=0)
			BEGIN

					SELECT	* 
					FROM  [dbo].[WageView] 
					WHERE Wage_WorkerCode = @WorkerCode_In  AND Wage_Active=1
					ORDER BY Wage_StartDate DESC, Wage_CreatedDate DESC
			END

	
	
	SELECT @Count_Out = @@ROWCOUNT;

	--END TRY
	--BEGIN CATCH
	--	SELECT MessageReturn = ERROR_MESSAGE();
	--END CATCH

	--END
GO
