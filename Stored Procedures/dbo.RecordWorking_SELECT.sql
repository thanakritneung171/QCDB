SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_SELECT] 

	
		@DailyCode varchar(20) = NULL,
		@Date datetime=NULL
AS
     SELECT *
     FROM RecordWorking
     WHERE DailyCode = @DailyCode OR @DailyCode IS NULL
	 AND CONVERT(DATE,Date)=CONVERT(DATE,@Date) OR @Date IS NULL






GO
