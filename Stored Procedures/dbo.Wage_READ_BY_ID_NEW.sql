SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wage_READ_BY_ID_NEW]

	@Wage_In int  = 0
AS
BEGIN
		BEGIN TRY
	
		SELECT	* 
		FROM  [dbo].[WageView] 
		WHERE Wage_WageId = @Wage_In
		END 
		
		TRY

		BEGIN CATCH
			SELECT MessageReturn = ERROR_MESSAGE();
		END CATCH


END
GO
