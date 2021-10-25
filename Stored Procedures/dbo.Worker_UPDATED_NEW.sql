SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_UPDATED_NEW] 
-- Add the parameters for the stored procedure here
@WorkerCode_In       VARCHAR(10), 
@Title_In            NVARCHAR(50), 
@FirstName_In        NVARCHAR(50), 
@LastName_In         NVARCHAR(50), 
@IdentificationNo_In NVARCHAR(13), 
@PassportNo_In       NVARCHAR(10), 
@Phone_In            NVARCHAR(10), 
@Address_In          NVARCHAR(255), 
@ProjectId_In        INT, 
@WageId_In           INT, 
@WorkStatus_In       INT, 
@Remark_In           NVARCHAR(255), 
@RunningNo_In		 INT, 
@AliasName_In        NVARCHAR(255), 
@Active_In           BIT,
@CreatedBy_In INT,
@AttachmentIdImagee_In int,
@AttachmentIdDocApproved_In int

AS
BEGIN
		BEGIN TRY
		-- update 
		Update  Worker Set 
			WorkerCode=@WorkerCode_In,
			Title=@Title_In,
			FirstName=@FirstName_In,
			LastName=@LastName_In,
			IdentificationNo=@IdentificationNo_In,
			PassportNo=@PassportNo_In,
			Phone=@Phone_In,
			Address=@Address_In,
			ProjectId=@ProjectId_In,
			WageId=@WageId_In,
			WorkStatus=@WorkStatus_In,
			Remark=@Remark_In,
			RunningNo=@RunningNo_In,
			AliasName=@AliasName_In,
			Active=@Active_In,
			ModifiedBy=@CreatedBy_In,
			ModifiedDate=GETDATE(),
			AttachmentIdImage=@AttachmentIdImagee_In,
			AttachmentIdDocApproved=@AttachmentIdDocApproved_In
		WHERE WorkerCode= @WorkerCode_In; 
		
		Select 0 as StatusMonthWageActive,*,MessageReturn='Update Data Successfully' from WorkerView WHERE @WorkerCode_In = @WorkerCode_In


	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH


END
GO
