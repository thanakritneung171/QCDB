SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_COUNT_WAITAPPROVE] @Status int
AS
	 SELECT m.ProjectTypeId , COUNT(*) as CountWaitApprove
	 FROM [con].[ChangePriceMaster] m
	 JOIN [con].[ChangePriceDetail]  cd on m.Id = cd.ChangePriceMasterId
	 LEFT JOIN [con].[House] h on  h.Id = m.HouseId 
	 LEFT JOIN [con].[ProjectInHouse] p ON p.ProjectCode = m.ProjectCode
	 WHERE m.Status = @Status
	 AND (h.Active = 1 OR m.HouseId IS NULL)
	 AND (p.Active = 1 OR m.ProjectCode IS NULL)
	 GROUP BY m.ProjectTypeId






GO
