SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[ApprovedMonthlyAttachment_CREATE] 


@MonthlyCode    NVARCHAR(50) = NULL, 
@AttachmentId int = NULL,
@Remark     NVARCHAR(255) = NULL, 
@Round         INT = NULL,
@Status        INT = NULL,
@IsActive INT = NULL,
@CreateBy INT = NULL

AS


BEGIN


		 INSERT INTO [dbo].[ApprovedMonthlyAttachment]
			   ([MonthlyCode]
			   ,[AttachmentId]
			   ,[Remark]
			   ,[Round]
			   ,[IsActive]
			   ,[CreateBy]
			   ,[CreateDate]
			   ,[Status])
		 VALUES
			   (@MonthlyCode
			   ,@AttachmentId
			   ,@Remark
			   ,@Round
			   ,@IsActive
			   ,@CreateBy
			   ,GETDATE()
			   ,@Status)

		 SELECT	* FROM  [dbo].[ApprovedMonthlyAttachmentView] WHERE  ApprovedMonthlyAttachment_Id  = CAST(SCOPE_IDENTITY() AS INT) 
END



GO
