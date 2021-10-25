SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[WorkerNameCheck]
(
		@FirstName_In nvarchar(200) = NULL,
		@LastName_In nvarchar(200) = NULL,
		@Id_In nvarchar(13) = NULL

)
RETURNS INT 
AS   
-- Returns the stock level for the product.  
BEGIN  
		DECLARE @result INT   ;  
		DECLARE @NameCount INT;


	
	SELECT  @NameCount=COUNT(WORK.Worker_WorkerCode)
			FROM dbo.WorkerView WORK 			
	WHERE  WORK.Worker_FirstName+WORK.Worker_LastName=@FirstName_In+@LastName_In and WORK.Worker_WorkerCode not in(@Id_In);

		    SELECT @result = @NameCount



    RETURN @result;  
END; 
GO
