SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachine_READ_BY] @ApproveConfirmDate DATE = NULL
AS
     SELECT *
     FROM ApproveConfirmBookMachine
     WHERE CAST(ApproveConfirmDate AS DATE) = CAST(@ApproveConfirmDate AS DATE);
GO
