SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Attachment_CREATE] 
 @Code NVARCHAR(50) = NULL,
 @FileName NVARCHAR(255) = NULL,
 @FileSize BIGINT = NULL,
 @FileType NVARCHAR(50) = NULL,
 @IsActive INT = NULL,
 @CreateBy INT = NULL,
 @Path NVARCHAR(255) = NULL
AS
BEGIN
     INSERT INTO [dbo].[Attachment]
           ([AttachmentCode]
           ,[FileName]
           ,[FileSize] 
		   ,[FileType]               
           ,[IsActive]
           ,[CreateBy]
           ,[CreateDate]
		   ,[Path])
     VALUES
           (@Code		  
           ,@FileName
           ,@FileSize 
		   ,@FileType        
           ,@IsActive
           ,@CreateBy
           ,GETDATE()
		   ,@Path)

	SELECT	* FROM  [dbo].[AttachmentView] WHERE [Attachment_AttachmentId]  = CAST(SCOPE_IDENTITY() AS INT) 
END
GO
