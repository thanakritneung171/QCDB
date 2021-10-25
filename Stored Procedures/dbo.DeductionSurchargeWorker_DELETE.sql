SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_DELETE] 
	@Id int = NULL
AS
     DELETE
     FROM DeductionSurchargeWorker
     WHERE Id = @Id






GO
