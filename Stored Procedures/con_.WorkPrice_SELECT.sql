SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkPrice_SELECT] @ProjectTypeId INT          = NULL, 
                                         @WorkId        INT          = NULL, 
                                         @HouseId       INT          = NULL, 
                                         @ProjectCode   NVARCHAR(10) = NULL
AS
     SELECT DISTINCT 
            wp.*, 
            w.SetAmountBeforePay AS SetAmountBeforePay, 
     (
         SELECT TOP 1 cm.STATUS
         FROM [con].ChangePriceDetail cd
              JOIN [con].ChangePriceMaster cm ON cm.Id = cd.ChangePriceMasterId
         WHERE cd.WorkPriceId = wp.Id
         ORDER BY ISNULL(cm.ModifiedDate, cm.CreatedDate) DESC
     ) AS MasterStatus
     FROM [con].[WorkPrice] wp
          JOIN [con].[Work] w ON w.Id = wp.WorkId
          LEFT JOIN [con].House h ON h.Id = wp.HouseId
          LEFT JOIN [con].[ProjectInHouse] p ON p.ProjectCode = wp.ProjectCode
     WHERE(wp.ProjectTypeId = @ProjectTypeId
           OR @ProjectTypeId IS NULL)
          AND (wp.WorkId = @WorkId
               OR @WorkId IS NULL)
          AND (wp.HouseId = @HouseId
               OR @HouseId IS NULL)
          AND (wp.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (h.Active = 1
               OR wp.HouseId IS NULL)
          AND (p.Active = 1
               OR wp.ProjectCode IS NULL);

GO
