SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorkingAttachment_CREATE] 
@DailyCode    NVARCHAR(50) = NULL, 
@AttachmentId      INT = NULL, 
@Remark     NVARCHAR(255) = NULL, 
@IsActive      INT = NULL, 
@CreateBy      INT = NULL, 
@Round         INT = NULL,
@Status        INT = NULL
AS
BEGIN
     INSERT INTO [dbo].[RecordWorkingAttachment]
           ([DailyCode]
           ,[AttachmentId]
           ,[Remark]
           ,[Round]
           ,[IsActive]
           ,[CreateBy]
           ,[CreateDate]
		   ,[Status])
     VALUES
           (@DailyCode
           ,@AttachmentId
           ,@Remark
           ,@Round
           ,@IsActive
           ,@CreateBy
           ,GETDATE()
		   ,@Status)

     SELECT	* FROM  [dbo].[RecordWorkingAttachmentView] WHERE [RecordWorkingAttachment_Id]  = CAST(SCOPE_IDENTITY() AS INT) 
END
GO
