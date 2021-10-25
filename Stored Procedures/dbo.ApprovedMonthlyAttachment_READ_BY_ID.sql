SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyAttachment_READ_BY_ID]
@Id INT = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[ApprovedMonthlyAttachmentView]
	WHERE [ApprovedMonthlyAttachment_ID]  = @Id
END

GO
