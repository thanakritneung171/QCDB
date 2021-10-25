SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DescriptionWork_CREATE] 
	-- Add the parameters for the stored procedure here
	@DescriptionName	nvarchar(255)			,
	@Active	bit						,
	@CreatedDate	datetime		,
	@CreatedBy	int								
	AS
	INSERT INTO DescriptionWork(
	DescriptionName,
	Active,
	CreatedDate,
	CreatedBy
	)
	VALUES(
	@DescriptionName,
	@Active			,
	@CreatedDate	,
	@CreatedBy								
	);

	  SELECT SCOPE_IDENTITY() AS DesId;
GO
