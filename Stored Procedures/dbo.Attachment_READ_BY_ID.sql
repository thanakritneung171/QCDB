SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Attachment_READ_BY_ID]
@Id INT = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[AttachmentView]
	WHERE [Attachment_Id] = @Id
END

GO
