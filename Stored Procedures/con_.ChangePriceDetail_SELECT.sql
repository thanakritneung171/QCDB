SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceDetail_SELECT] @ChangePriceMasterId INT = NULL, 
                                                  @WorkPriceId         INT = NULL
AS
     SELECT cd.*, 
     (
         SELECT TOP 1 ISNULL(ModifiedDate, CreatedDate)
         FROM ChangePriceMaster
         WHERE Id = cd.ChangePriceMasterId
         ORDER BY ModifiedDate DESC
     ) AS LastModifiedDate , wp.* , w.SetAmountBeforePay as SetAmountBeforePay
     FROM [con].[ChangePriceDetail] cd
	 JOIN [con].[ChangePriceMaster] cm on cm.Id = cd.ChangePriceMasterId
	 LEFT JOIN [con].[WorkPrice] wp on wp.Id = cd.WorkPriceId
	 LEFT JOIN [con].[Work] w on w.Id = wp.WorkId
     WHERE(ChangePriceMasterId = @ChangePriceMasterId
           OR @ChangePriceMasterId IS NULL)
          AND (WorkPriceId = @WorkPriceId
               OR @WorkPriceId IS NULL);




GO
