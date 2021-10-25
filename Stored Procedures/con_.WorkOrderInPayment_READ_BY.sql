SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_READ_BY] @WorkOrderId          INT = NULL, 
                                                   @SetToPayContractorId INT = NULL,
												   @PayContractorCode INT = NULL
AS
     SELECT *
     FROM [con].[WorkOrderInPayment]
     WHERE WorkOrderId = @WorkOrderId 
	 AND (SetToPayContractorId = @SetToPayContractorId OR @SetToPayContractorId IS NULL)
	 AND (PayContractorCode = @PayContractorCode OR @PayContractorCode IS NULL)

GO
