SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_DataWorker_READ_BY_WorkerCode] 
-- Add the parameters for the stored procedure here
	@WorkerCode varchar(20) = NULL

	

	AS
	BEGIN

		select WK.WorkerCode,WK.Title,WK.FirstName,WK.LastName,WK.AliasName,WK.IdentificationNo,
	WK.PassportNo,WK.Phone,WK.Address,WK.ProjectId,WK.WageId,W.Wage,WK.WorkStatus,
	WK.Remark,WK.ModifiedDate,WK.ModifiedBy,
	 WAP.ProjectCode,PJ.ProjectName,
	 ATTI.AttachmentId as AttachmentIdImage ,ATTD.AttachmentId as AttachmentIdDocApproved,
	US.UserProfile_Name as ModifiedName
	from Worker WK 
	 Left join WorkAtProject  WAP on WAP.ProjectId = WK.ProjectId
	Left join con.Project PJ  on PJ.ProjectCode = WAP.ProjectCode
	Left join Wage W  on W.WageId = WK.WageId
	Left join Attachment ATTI on ATTI.AttachmentId = WK.AttachmentIdImage
	Left join Attachment ATTD on ATTD.AttachmentId = WK.AttachmentIdDocApproved
	LEFT JOIN UserView US on US.UserProfile_UserId = WK.CreatedBy
	where  WK.WorkerCode=@WorkerCode


		

		

END
GO
