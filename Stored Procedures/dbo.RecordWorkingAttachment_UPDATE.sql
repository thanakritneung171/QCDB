SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingAttachment_UPDATE] 
@Id    INT = NULL, 
@DailyCode    NVARCHAR(50) = NULL, 
@AttachmentId      INT = NULL, 
@Remark     NVARCHAR(255) = NULL, 
@IsActive      INT = NULL, 
@LastUpdateBy  INT = NULL, 
@Round         INT = NULL,
@Status        INT = NULL
AS
BEGIN
     UPDATE [dbo].[RecordWorkingAttachment]
	   SET [DailyCode] = @DailyCode
		  ,[AttachmentId] = @AttachmentId
		  ,[Remark] = @Remark
		  ,[Round] = @Round
		  ,[IsActive] = @IsActive		  
		  ,[LastUpdateBy] = @LastUpdateBy
		  ,[LastUpdateDate] = GETDATE()
		  ,[Status] = @Status
	 WHERE Id = @Id

	 SELECT	* FROM  [dbo].[RecordWorkingAttachmentView] WHERE [RecordWorkingAttachment_Id]  = @Id
END






GO
