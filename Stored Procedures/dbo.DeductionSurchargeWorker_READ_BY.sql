SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_READ_BY] 
	@Id int = NULL
AS
     SELECT *
     FROM DeductionSurchargeWorker
     WHERE Id = @Id






GO
