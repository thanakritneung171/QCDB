SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HolidayType_READ_BY_ID] 
-- Add the parameters for the stored procedure here
	@HolidayType_In INT  = 0
AS
BEGIN
		BEGIN TRY
	
		SELECT	HLD.* 
		FROM  HolidayTypeView HLD 
		WHERE HLD.HolidayType_Id = @HolidayType_In
		END 
		
		TRY

		BEGIN CATCH
			SELECT MessageReturn = ERROR_MESSAGE();
		END CATCH


END
GO
