SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkAtProject_CREATE] 
	-- Add the parameters for the stored procedure here
	@WorkerCode	varchar(10)		,
	@ProjectCode	varchar(10)	,
	@StartDate	datetime		,
	@Active	bit					,
	@ApprovedBy	int				,
	@CreatedBy	int				
	AS
	INSERT INTO WorkAtProject(WorkerCode,
	ProjectCode,
	StartDate,
	Active,
	ApprovedDate,
	ApprovedBy,
	CreatedDate,
	CreatedBy
	)
	VALUES(@WorkerCode,
	@ProjectCode			,
	@StartDate		,
	@Active			,
	GETDATE()	,
	@ApprovedBy		,
	GETDATE()	,
	@CreatedBy								
	);
	SELECT * from WorkAtProject where ProjectId= @@IDENTITY
GO
