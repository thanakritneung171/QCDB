SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkerWorkGroup_CREATE] 
	-- Add the parameters for the stored procedure here
	@WorkGroupName	nvarchar(50)			,
	@Active	bit						,
	@CreatedDate	datetime		,
	@CreatedBy	int								
	AS
	INSERT INTO WorkerWorkGroup(
	WorkGroupName,
	Active,
	CreatedDate,
	CreatedBy
	)
	VALUES(
	@WorkGroupName,
	@Active			,
	@CreatedDate	,
	@CreatedBy								
	);

	  SELECT SCOPE_IDENTITY() AS WorkGroupId;
GO
