SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyAttachment_DELETED]
@Id INT = NULL,
@ActionBy INT = NULL
AS
BEGIN	
	UPDATE [ApprovedMonthlyAttachment] SET
	IsActive=0,
	LastUpdateBy	= @ActionBy,
	LastUpdateDate = GETDATE()
	WHERE [ID]  = @Id
END


	SELECT * from [ApprovedMonthlyAttachmentView] where [ApprovedMonthlyAttachment_Id]= @Id;
GO
