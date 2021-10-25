SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_CREATE] @WorkOrderId          INT         = NULL, 
                                                  @WorkId               INT         = NULL, 
                                                  @ContractorCode       VARCHAR(10) = NULL, 
                                                  @SetToPayContractorId INT         = NULL, 
                                                  @PayContractorCode    INT         = NULL, 
                                                  @PaymentCode          VARCHAR(10) = NULL
AS
     INSERT INTO [con].[WorkOrderInPayment]
     (WorkOrderId, 
      WorkId, 
      ContractorCode, 
      SetToPayContractorId, 
      PayContractorCode, 
      PaymentCode
     )
     VALUES
     (@WorkOrderId, 
      @WorkId, 
      @ContractorCode, 
      @SetToPayContractorId, 
      @PayContractorCode, 
      @PaymentCode
     );
GO
