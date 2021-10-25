SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Payment_SELECT] @ContractorCode       VARCHAR(10) = NULL, 
                                       @Active               BIT         = NULL, 
                                       @SearchCreateDateForm DATE        = NULL, 
                                       @SearchCreateDateTo   DATE        = NULL
AS
     SELECT *
     FROM con.Payment
     WHERE(ContractorCode = @ContractorCode
           OR @ContractorCode IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
          AND ((CAST(CreatedDate AS DATE) >= CAST(@SearchCreateDateForm AS DATE)
                OR @SearchCreateDateForm IS NULL)
               AND (CAST(CreatedDate AS DATE) <= CAST(@SearchCreateDateTo AS DATE)
                    OR @SearchCreateDateTo IS NULL));
GO
