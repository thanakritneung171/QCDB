SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[PassportNoCheck]
(
		@PassportNo_In nvarchar(20) = NULL,
		@Id_In nvarchar(13) = NULL

)
RETURNS INT 
AS   
-- Returns the stock level for the product.  
BEGIN  
		DECLARE @result INT   ;  
		DECLARE @PassportNoCount INT;


	
	SELECT  @PassportNoCount=COUNT(WORK.Worker_WorkerCode)
			FROM dbo.WorkerView WORK 			
	WHERE  WORK.Worker_PassportNo=@PassportNo_In and WORK.Worker_WorkerCode not in( @Id_In);

		    SELECT @result = @PassportNoCount


    RETURN @result;  
END; 
GO
