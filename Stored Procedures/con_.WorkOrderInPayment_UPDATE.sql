SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_UPDATE] @WorkOrderId          INT         = NULL, 
                                                   @WorkId               INT         = NULL, 
                                                   @ContractorCode       VARCHAR(10) = NULL, 
                                                   @SetToPayContractorId INT         = NULL, 
                                                   @PayContractorCode    INT         = NULL, 
                                                   @PaymentCode          VARCHAR(10) = NULL
AS
     UPDATE [con].[WorkOrderInPayment]
       SET 
           WorkId = @WorkId, 
           ContractorCode = @ContractorCode, 
           SetToPayContractorId = @SetToPayContractorId, 
           PayContractorCode = @PayContractorCode, 
           PaymentCode = @PaymentCode
     WHERE WorkOrderId = @WorkOrderId AND (SetToPayContractorId = @SetToPayContractorId OR @SetToPayContractorId IS NULL);
GO
