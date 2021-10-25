SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wage_READ_BY_WorkerCode]

	@WorkerCode NVARCHAR(10) = NULL
AS
BEGIN
	
		SELECT	* 
		FROM  [dbo].[WageView] 
		WHERE Wage_WorkerCode = @WorkerCode
		AND Wage_Active = 1
		
	


END
GO
