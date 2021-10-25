SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_COUNT] 
		 @Date Datetime=NULL,
		 @Status int =NULL
AS
     SELECT COUNT(*) as CountAmount
     FROM RecordWorking
     WHERE ([Date]=@Date OR @Date IS NULL)
	 AND ([Status] = @Status OR @Status IS NULL)




GO
