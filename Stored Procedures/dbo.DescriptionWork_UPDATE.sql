SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DescriptionWork_UPDATE] 
	@DesId int,
	@DescriptionName	nvarchar(255)		,
	@Active	bit			,
	@ModifiedDate	datetime		,
	@ModifiedBy	int			
AS
     UPDATE DescriptionWork
       SET DescriptionName		= @DescriptionName,
		Active				= @Active,
		ModifiedDate		= @ModifiedDate,
		ModifiedBy			= @ModifiedBy
     WHERE DesId = @DesId;






GO
