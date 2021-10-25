SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================

-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_DELETE_NEW] 
-- Add the parameters for the stored procedure here
@DesId_In					INT, 
@Active_In				BIT, 
@CreatedBy_In			INT

AS

BEGIN
		BEGIN TRY
		-- update 
			UPDATE DescriptionWork
		SET 
		 Active=@Active_In,
		 ModifiedBy=@CreatedBy_In,
		 ModifiedDate=GETDATE()
		 WHERE DesId=@DesId_In;

	SELECT * FROM  DescriptionWorkView WHERE DescriptionWork_DesId=@DesId_In;

	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH
	END
GO
