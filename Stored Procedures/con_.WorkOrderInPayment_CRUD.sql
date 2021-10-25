SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                @WorkOrderId          INT           = NULL, 
                                                @WorkId               INT           = NULL, 
                                                @ContractorCode       VARCHAR(10)   = NULL, 
                                                @SetToPayContractorId INT           = NULL, 
                                                @PayContractorCode    INT           = NULL, 
                                                @PaymentCode          VARCHAR(10)   = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkOrderInPayment_Create] 
                     @WorkOrderId, 
                     @WorkId, 
                     @ContractorCode, 
                     @SetToPayContractorId, 
                     @PayContractorCode, 
                     @PaymentCode;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkOrderInPayment_UPDATE] 
                     @WorkOrderId, 
                     @WorkId, 
                     @ContractorCode, 
                     @SetToPayContractorId, 
                     @PayContractorCode, 
                     @PaymentCode;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkOrderInPayment_READ_BY] 
                     @WorkOrderId, 
                     @SetToPayContractorId, 
                     @PayContractorCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkOrderInPayment_SELECT] 
                     @WorkId, 
                     @ContractorCode, 
                     @SetToPayContractorId, 
                     @PayContractorCode, 
                     @PaymentCode;
        END;
        IF @Control_Character_In = 'select_ApproveSetToPaycontractorBy'
            BEGIN
                EXEC [con].[WorkOrderInPayment_SELECT_ApproveSetToPaycontractorBY] 
                     @PayContractorCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
