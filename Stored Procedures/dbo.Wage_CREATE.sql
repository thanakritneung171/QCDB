SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wage_CREATE] 
	-- Add the parameters for the stored procedure here
	@WorkerCode	varchar(10)			,
	@Wage	decimal(10, 2)			,
	@StartDate	datetime			,
	@Active	bit						,
	@ApprovedDate	datetime		,
	@ApprovedBy	int					,
	@CreatedDate	datetime		,
	@CreatedBy	int								
	AS
	INSERT INTO Wage(WorkerCode,
	Wage,
	StartDate,
	Active,
	ApprovedDate,
	ApprovedBy,
	CreatedDate,
	CreatedBy
	)
	VALUES(@WorkerCode,
	@Wage			,
	@StartDate		,
	@Active			,
	@ApprovedDate	,
	@ApprovedBy		,
	@CreatedDate	,
	@CreatedBy								
	);

	  SELECT SCOPE_IDENTITY() AS WageId;
GO
