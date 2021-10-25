SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_SELECT] @ContractorCode VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[ContractorPassport]
     WHERE ContractorCode = @ContractorCode;
GO
