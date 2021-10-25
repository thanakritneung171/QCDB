SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Contractor_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                        @ContractorCode       VARCHAR(10)    = NULL, 
                                        @ContractorTitle      NVARCHAR(20)   = NULL, 
                                        @ContractorName       NVARCHAR(100)  = NULL, 
                                        @ContractorLastName   NVARCHAR(50)   = NULL, 
                                        @ContractorNameEN     NVARCHAR(100)  = NULL, 
                                        @ContractorLastNameEN NVARCHAR(50)   = NULL, 
                                        @Identification       NVARCHAR(20)   = NULL, 
                                        @Refcode              NVARCHAR(10)   = NULL, 
                                        @PassportNo           NVARCHAR(10)   = NULL, 
                                        @OldPassportNo        NVARCHAR(10)   = NULL, 
                                        @ContractorType       INT            = NULL, 
                                        @Address              NVARCHAR(255)  = NULL, 
                                        @Phone                VARCHAR(20)    = NULL, 
                                        @ProjectSent          INT            = NULL, 
                                        @UserSent             NVARCHAR(50)   = NULL, 
                                        @CreatedDate          DATETIME       = NULL, 
                                        @CreatedBy            INT            = NULL, 
                                        @ModifiedDate         DATETIME       = NULL, 
                                        @ModifiedBy           INT            = NULL, 
                                        @Active               BIT            = NULL, 
                                        @AccountNumber        NVARCHAR(20)   = NULL, 
                                        @BalanceAmount        NUMERIC(10, 2)  = NULL, 
                                        @TaxNumber            VARCHAR(20)    = NULL, 
                                        @AliasName            NVARCHAR(100)  = NULL, 
                                        @BankId               INT            = NULL, 
                                        @WorkPermitName       NVARCHAR(256)  = NULL, 
                                        @TaxPayerName         NVARCHAR(256)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Contractor_Create] 
                     @ContractorCode, 
                     @ContractorTitle, 
                     @ContractorName, 
                     @ContractorLastName, 
                     @ContractorNameEN, 
                     @ContractorLastNameEN, 
                     @Identification, 
                     @Refcode, 
                     @PassportNo, 
                     @OldPassportNo, 
                     @ContractorType, 
                     @Address, 
                     @Phone, 
                     @ProjectSent, 
                     @UserSent, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @Active, 
                     @AccountNumber, 
                     @BalanceAmount, 
                     @TaxNumber, 
                     @AliasName, 
                     @BankId,
					 @WorkPermitName,
					 @TaxPayerName  
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Contractor_UPDATE] 
                     @ContractorCode, 
                     @ContractorTitle, 
                     @ContractorName, 
                     @ContractorLastName, 
                     @ContractorNameEN, 
                     @ContractorLastNameEN, 
                     @Identification, 
                     @Refcode, 
                     @PassportNo, 
                     @OldPassportNo, 
                     @ContractorType, 
                     @Address, 
                     @Phone, 
                     @ProjectSent, 
                     @UserSent, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @Active, 
                     @AccountNumber, 
                     @BalanceAmount, 
                     @TaxNumber, 
                     @AliasName, 
                     @BankId,
					 @WorkPermitName,
					 @TaxPayerName  
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Contractor_READ_BY] 
                     @ContractorCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Contractor_SELECT] 
                     @ContractorName, 
                     @ContractorLastName, 
                     @ContractorType, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
