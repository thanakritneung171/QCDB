SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_READ_BY] 
	@DailyCode varchar(20) = NULL
AS
     SELECT *
     FROM RecordWorking
     WHERE DailyCode = @DailyCode






GO
