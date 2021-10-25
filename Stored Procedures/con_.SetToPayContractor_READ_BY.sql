SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[SetToPayContractor_READ_BY] @Id                INT = NULL, 
                                                   @WorkOrderId       INT = NULL, 
                                                   @WorkOrderDetailId INT = NULL
AS
     SELECT s.*, 
            c.ContractorName AS ContractorName, 
            ISNULL(w.WorkName,wd.WorkName) AS WorkName,
			wo.SetToPayType  , w.WorkGroupMainId , wd.OtherDetailGroupWorkId
     FROM [con].[SetToPayContractor] s
	      JOIN [con].[WorkOrder] wo ON wo.Id = s.WorkOrderId
          JOIN [con].[Contractor] c ON c.ContractorCode = s.ContractorCode
          LEFT JOIN [con].[Work] w ON w.Id = s.WorkId
		  LEFT JOIN [con].[WorkOrderOtherDetail] wd ON wd.Id = s.WorkOrderDetailId
     WHERE(s.Id = @Id
           OR @Id IS NULL)
          AND (s.WorkOrderId = @WorkOrderId
               OR @WorkOrderId IS NULL)
          AND (s.WorkOrderDetailId = @WorkOrderDetailId
               OR @WorkOrderDetailId IS NULL)
          AND (s.Active = 1);
GO
