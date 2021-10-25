SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[WorkerCodeCheck]
(
		@WorkerCode_In nvarchar(13) = NULL
	

)
RETURNS INT 
AS   
-- Returns the stock level for the product.  
BEGIN  
		DECLARE @result INT   ;  
		DECLARE @WorkerCodeCount INT;

	
	SELECT @WorkerCodeCount= COUNT(WORK.Worker_WorkerCode)
			FROM dbo.WorkerView WORK 			
	WHERE  WORK.Worker_WorkerCode=@WorkerCode_In  AND  WORK.Worker_WorkerCode NOT IN (@WorkerCode_In)

		    SELECT @result = @WorkerCodeCount 			


    RETURN @result;  
END; 
GO
