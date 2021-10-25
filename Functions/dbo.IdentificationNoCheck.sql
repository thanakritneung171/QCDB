SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[IdentificationNoCheck]
(
		@IdentificationNo_In nvarchar(13) = NULL,
		@Id_In nvarchar(13) = NULL

)
RETURNS INT 
AS   
-- Returns the stock level for the product.  
BEGIN  
		DECLARE @result INT   ;  
		DECLARE @IdentificationNoCount INT;


	
	SELECT  @IdentificationNoCount=COUNT(WORK.Worker_WorkerCode)
			FROM dbo.WorkerView WORK 			
	WHERE  WORK.Worker_IdentificationNo=@IdentificationNo_In  and WORK.Worker_WorkerCode not in(@Id_In);

		    SELECT @result = @IdentificationNoCount


    RETURN @result;  
END; 
GO
