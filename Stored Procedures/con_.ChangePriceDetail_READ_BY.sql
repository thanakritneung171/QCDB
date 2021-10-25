SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceDetail_READ_BY] @ChangePriceMasterId INT = NULL, 
                                                   @WorkPriceId         INT = NULL
AS
     SELECT cd.*, 
     (
         SELECT TOP 1 ISNULL(ModifiedDate, CreatedDate)
         FROM ChangePriceMaster
         WHERE Id = cd.ChangePriceMasterId
         ORDER BY ModifiedDate DESC
     ) AS LastModifiedDate, wp.*
     FROM [con].[ChangePriceDetail] cd
	 LEFT JOIN [con].[WorkPrice] wp on wp.Id = cd.WorkPriceId
     WHERE(ChangePriceMasterId = @ChangePriceMasterId
           OR @ChangePriceMasterId IS NULL)
          AND (WorkPriceId = @WorkPriceId
               OR @WorkPriceId IS NULL);




GO
