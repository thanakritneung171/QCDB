SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_READ_BY_MONTHLYDETAIL_ID]
@MonthlyDetailId  int = NULL
AS
BEGIN	
		SELECT	w.*
	FROM  [dbo].[WorkLocationView] w	
	WHERE W.WorkLocation_MonthlyDetailId  = @MonthlyDetailId
END

GO
