SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_SELECT] @WorkId               INT         = NULL, 
                                                   @ContractorCode       VARCHAR(10) = NULL, 
                                                   @SetToPayContractorId INT         = NULL, 
                                                   @PayContractorCode    INT         = NULL, 
                                                   @PaymentCode          VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[WorkOrderInPayment]
     WHERE(WorkId = @WorkId
           OR @WorkId IS NULL)
          AND (ContractorCode = @ContractorCode
               OR @ContractorCode IS NULL)
          AND (SetToPayContractorId = @SetToPayContractorId
               OR @SetToPayContractorId IS NULL)
          AND (PayContractorCode = @PayContractorCode
               OR @PayContractorCode IS NULL)
          AND (PaymentCode = @PaymentCode
               OR @PaymentCode IS NULL);
GO
