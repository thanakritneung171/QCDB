SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingAttachment_READ_BY_ID]
@Id INT = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[RecordWorkingAttachmentView]
	WHERE [RecordWorkingAttachment_Id] = @Id
END

GO
