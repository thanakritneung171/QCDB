SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorkingHistory_CREATE] 
@DailyCode     NVARCHAR(20) = NULL, 
@Status        INT = NULL, 
@CreatedBy     INT = NULL,
@Remark        NVARCHAR(255) = NULL,
@AttachmentId  INT = NULL
AS
BEGIN
     INSERT INTO [dbo].[RecordWorkingHistory]
           ([DailyCode]
           ,[Date]
           ,[Status]
           ,[CreatedBy]
		   ,[Remark]
		   ,[AttachmentId])
     VALUES
           (@DailyCode
           ,GETDATE()
           ,@Status
           ,@CreatedBy
		   ,@Remark
		   ,@AttachmentId)

     SELECT	* FROM  [dbo].[RecordWorkingHistoryView] WHERE [RecordWorkingHistory_Id]  = CAST(SCOPE_IDENTITY() AS INT) 
END
GO
