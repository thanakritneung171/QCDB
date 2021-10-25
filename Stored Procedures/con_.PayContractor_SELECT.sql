SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractor_SELECT] @PayContractorCode     VARCHAR(10) = NULL, 
                                             @ProjectCode           VARCHAR(10) = NULL, 
                                             @Number                INT         = NULL, 
                                             @Status                INT         = NULL, 
                                             @Active                BIT         = NULL, 
                                             @CreatePaymentDateForm DATE        = NULL, 
                                             @CreatePaymentDateTo   DATE        = NULL
AS
     SELECT *
     FROM [con].[PayContractor]
     WHERE(PayContractorCode = @PayContractorCode
           OR @PayContractorCode IS NULL)
          AND (Number = @Number
               OR @Number IS NULL)
          AND (ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (STATUS = @Status
               OR @Status IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
          AND ((CAST(CreatedDate AS DATE) >= CAST(@CreatePaymentDateForm AS DATE)
                OR @CreatePaymentDateForm IS NULL)
               AND (CAST(CreatedDate AS DATE) <= CAST(@CreatePaymentDateTo AS DATE)
                    OR @CreatePaymentDateTo IS NULL));
GO
