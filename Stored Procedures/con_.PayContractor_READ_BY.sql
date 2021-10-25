SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractor_READ_BY] @PayContractorCode VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[PayContractor]
     WHERE PayContractorCode = @PayContractorCode;
GO
