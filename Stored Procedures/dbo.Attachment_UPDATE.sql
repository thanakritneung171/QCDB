SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Attachment_UPDATE] 
 @AttachmentId int = 0, 
 @Code NVARCHAR(50) = NULL, 
 @FileName NVARCHAR(255) = NULL,
 @FileSize BIGINT = NULL,
 @FileType NVARCHAR(50) = NULL,
 @IsActive INT = NULL,
 @LastUpdateBy INT = NULL,
 @Path NVARCHAR(255) = NULL
AS
BEGIN


		UPDATE [Attachment] SET
		  [AttachmentCode]=@Code,
		  [FileName]=@FileName,
          [FileSize]=@FileSize,
		  [FileType]=@FileType ,             
          [IsActive]=@IsActive,
          [LastUpdateBy]=@LastUpdateBy,
          [LastUpdateDate]=GETDATE(),
		  [Path]=@Path 
		  WHERE AttachmentId = @AttachmentId


	SELECT	* FROM  [dbo].[AttachmentView] WHERE [Attachment_AttachmentId]  =@AttachmentId;
END
GO
