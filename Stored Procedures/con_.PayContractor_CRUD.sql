SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREate PROCEDURE [con].[PayContractor_CRUD] @Control_Character_In  NVARCHAR(100)  = NULL, 
                                           @PayContractorCode     VARCHAR(10)    = NULL, 
                                           @CodeNumber            INT            = NULL, 
                                           @ProjectCode           VARCHAR(10)    = NULL, 
                                           @Number                INT            = NULL, 
                                           @TotalPrice            DECIMAL(10, 2)  = NULL, 
                                           @Status                INT            = NULL, 
                                           @Active                BIT            = NULL, 
                                           @CreatedDate           DATETIME       = NULL, 
                                           @CreatedBy             INT            = NULL, 
                                           @SubmitApproveDate     DATETIME       = NULL, 
                                           @SubmitApproveBy       INT            = NULL, 
                                           @LastApproveDate       DATETIME       = NULL, 
                                           @LastApproveBy         INT            = NULL, 
                                           @CreatePaymentDateForm DATE           = NULL, 
                                           @CreatePaymentDateTo   DATE           = NULL, 
                                           @VerifiedLevel1Date    DATETIME       = NULL, 
                                           @VerifiedLevel1By      INT            = NULL, 
                                           @VerifiedLevel2Date    DATETIME       = NULL, 
                                           @VerifiedLevel2By      INT            = NULL, 
                                           @NetPrice              DECIMAL(10, 2)  = NULL, 
                                           @VerifyNote          NVARCHAR(MAX)  = NULL, 
                                           @IsPass                BIT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[PayContractor_Create] 
                     @PayContractorCode, 
                     @CodeNumber, 
                     @ProjectCode, 
                     @Number, 
                     @TotalPrice, 
                     @Status, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[PayContractor_UPDATE] 
                     @PayContractorCode, 
                     @Status, 
                     @Active, 
                     @SubmitApproveDate, 
                     @SubmitApproveBy, 
                     @LastApproveDate, 
                     @LastApproveBy, 
                     @VerifiedLevel1Date, 
                     @VerifiedLevel1By, 
                     @VerifiedLevel2Date, 
                     @VerifiedLevel2By,
					 @VerifyNote,
					 @IsPass
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[PayContractor_READ_BY] 
                     @PayContractorCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[PayContractor_SELECT] 
                     @PayContractorCode, 
                     @ProjectCode, 
                     @Number, 
                     @Status, 
                     @Active, 
                     @CreatePaymentDateForm, 
                     @CreatePaymentDateTo;
        END;
        IF @Control_Character_In = 'curentNumber'
            BEGIN
                EXEC [con].[PayContractor_GET_CURRENT_NUMBER] 
                     @ProjectCode, 
                     @CreatedDate;
        END;
    END;
        SET ANSI_NULLS ON;
GO
