SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Payment_READ_BY] @PaymentCode VARCHAR(10) = NULL
AS
     SELECT *
     FROM con.Payment
     WHERE PaymentCode = @PaymentCode
GO
