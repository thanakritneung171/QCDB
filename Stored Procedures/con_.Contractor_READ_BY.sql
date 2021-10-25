SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Contractor_READ_BY] @ContractorCode VARCHAR(10)
AS
     SELECT *
     FROM [con].[Contractor]
     WHERE ContractorCode = @ContractorCode;

GO
