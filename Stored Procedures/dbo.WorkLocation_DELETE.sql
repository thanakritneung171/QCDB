SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_DELETE] 
	@DailyDetailId int = NULL,
	@MonthlyDetailId int= null
AS
     DELETE WorkLocation
     WHERE (DailyDetailId = @DailyDetailId  OR @DailyDetailId IS NULL) and (MonthlyDetailId  = @MonthlyDetailId OR @MonthlyDetailId IS NULL)






GO
