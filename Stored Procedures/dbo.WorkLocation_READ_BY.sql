SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_READ_BY] 
	@DailyDetailId int = NULL,
	@MonthlyDetailId int
AS
     SELECT *
     FROM WorkLocation
     WHERE (DailyDetailId = @DailyDetailId OR @DailyDetailId IS NULL ) AND (MonthlyDetailId = @MonthlyDetailId OR @MonthlyDetailId IS NULL)






GO
