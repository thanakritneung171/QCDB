SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceDetail_DELETE] @ChangePriceMasterId INT = NULL,
												  @WorkPriceId		   INT = NULL
AS
     
     DELETE [con].[ChangePriceDetail]
	 WHERE ChangePriceMasterId = @ChangePriceMasterId 
	 AND (WorkPriceId = @WorkPriceId OR @WorkPriceId IS NULL)




GO
