SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PaymentDetail_SELECT] @PaymentCode VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[PaymentDetail]
     WHERE PaymentCode = @PaymentCode;
GO
