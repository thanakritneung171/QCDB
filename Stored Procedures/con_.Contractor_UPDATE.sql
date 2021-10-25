SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Contractor_UPDATE] @ContractorCode       VARCHAR(10)    = NULL, 
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
     UPDATE [con].[Contractor]
       SET 
           [ContractorTitle] = @ContractorTitle, 
           [ContractorName] = @ContractorName, 
           [ContractorLastName] = @ContractorLastName, 
           [ContractorNameEN] = @ContractorNameEN, 
           [ContractorLastNameEN] = @ContractorLastNameEN, 
           [Identification] = @Identification, 
           [Refcode] = @Refcode, 
           [PassportNo] = @PassportNo, 
           [OldPassportNo] = @OldPassportNo, 
           [ContractorType] = @ContractorType, 
           [Address] = @Address, 
           [Phone] = @Phone, 
           [ProjectSent] = @ProjectSent, 
           [UserSent] = @UserSent, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [Active] = @Active, 
           [AccountNumber] = @AccountNumber, 
           [BalanceAmount] = @BalanceAmount, 
           [TaxNumber] = @TaxNumber, 
           [AliasName] = @AliasName, 
           [BankId] = @BankId, 
           [WorkPermitName] = @WorkPermitName, 
           [TaxPayerName] = @TaxPayerName
     WHERE ContractorCode = @ContractorCode;
GO
