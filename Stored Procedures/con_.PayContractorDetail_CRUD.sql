SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorDetail_CRUD] @Control_Character_In  NVARCHAR(100)  = NULL, 
                                                 @Id                    INT            = NULL, 
                                                 @PayContractorCode     VARCHAR(10)    = NULL, 
                                                 @Number                INT            = NULL, 
                                                 @Period                INT            = NULL, 
                                                 @WorkGroupMainId       INT            = NULL, 
                                                 @WorkId                INT            = NULL, 
                                                 @WorkName              NVARCHAR(256)  = NULL, 
                                                 @ProjectCode           VARCHAR(10)    = NULL, 
                                                 @ListUnitName          VARCHAR(MAX)   = NULL, 
                                                 @TotalAmount           DECIMAL(10, 2)  = NULL, 
                                                 @TotalPrice            DECIMAL(10, 2)  = NULL, 
                                                 @WorkUnit              NVARCHAR(50)   = NULL, 
                                                 @ContractorName        NVARCHAR(256)  = NULL, 
                                                 @ContractorCode        VARCHAR(10)    = NULL, 
                                                 @Note                  NVARCHAR(256)  = NULL, 
                                                 @Status                INT            = NULL, 
                                                 @Active                BIT            = NULL, 
                                                 @NoteApprove           NVARCHAR(MAX)  = NULL, 
                                                 @PaymentCode           VARCHAR(10)    = NULL, 
                                                 @ApproveDate           DATETIME       = NULL, 
                                                 @ApproveBy             INT            = NULL, 
                                                 @CreatePaymentDateForm DATE           = NULL, 
                                                 @CreatePaymentDateTo   DATE           = NULL, 
                                                 @PricePerUnit          DECIMAL(10, 2)  = NULL, 
                                                 @WHT                   DECIMAL(10, 2)  = NULL, 
                                                 @VATType               INT            = NULL, 
                                                 @VAT                   DECIMAL(10, 2)  = NULL, 
                                                 @NetPrice              DECIMAL(10, 2)  = NULL,
												 @RejectReason          NVARCHAR(255)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[PayContractorDetail_Create] 
                     @PayContractorCode, 
                     @Number, 
                     @Period, 
                     @WorkGroupMainId, 
                     @WorkId, 
                     @WorkName, 
                     @ProjectCode, 
                     @ListUnitName, 
                     @TotalAmount, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @ContractorName, 
                     @ContractorCode, 
                     @Note, 
                     @Status, 
                     @Active, 
                     @NoteApprove, 
                     @PricePerUnit, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[PayContractorDetail_UPDATE] 
                     @Id, 
                     @Status, 
                     @Active, 
                     @NoteApprove, 
                     @PaymentCode, 
                     @ApproveDate, 
                     @ApproveBy,
					 @RejectReason
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[PayContractorDetail_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[PayContractorDetail_SELECT] 
                     @PayContractorCode, 
                     @ProjectCode, 
                     @ContractorCode, 
                     @Status, 
                     @Active, 
                     @CreatePaymentDateForm, 
                     @CreatePaymentDateTo, 
                     @WorkGroupMainId;
        END;
        IF @Control_Character_In = 'currentPeriod'
            BEGIN
                EXEC [con].[PayContractorDetail_GET_CURRENT_PERIOD] 
                     @ContractorCode,
					 @PayContractorCode
        END;
    END;
        SET ANSI_NULLS ON;

GO
