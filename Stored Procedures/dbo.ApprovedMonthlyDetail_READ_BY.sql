SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_READ_BY] 
	@MonthlyDetailId int = NULL
AS
     SELECT *
     FROM ApprovedMonthlyDetail
     WHERE MonthlyDetailId = @MonthlyDetailId






GO
