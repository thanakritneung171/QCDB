SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_DELETE] 
		@MonthlyDetailId int = NULL
AS
     DELETE ApprovedMonthlyDetail
     WHERE MonthlyDetailId = @MonthlyDetailId 





GO
