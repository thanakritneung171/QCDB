SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorDetail_READ_BY] @Id INT   = NULL
AS
     SELECT * , pc.CreatedDate as CreatePayContractorDate, wm.MainName as WorkGroupMainName , 
	 	(SELECT TOP 1 w.SetToPayType
				  FROM [con].[WorkOrderInPayment] wp
				  JOIN [con].[WorkOrder] w on w.Id = wp.WorkOrderId 
				  WHERE wp.PayContractorCode = pcd.PayContractorCode AND w.WorkId = pcd.WorkId) as SetToPayType
	 FROM [con].[PayContractorDetail] pcd
	 JOIN [con].[PayContractor] pc on pc.PayContractorCode = pcd.PayContractorCode
	 LEFT JOIN [con].[WorkGroupMain] wm ON wm.Id = pcd.WorkGroupMainId
	 WHERE pcd.Id = @Id
GO
