SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_CREATE_NEW] 
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
@WageId_In          INT, 
@WorkStatus_In       INT, 
@Remark_In          NVARCHAR(255), 
@RunningNo_In          NVARCHAR(255), 
@AliasName_In          NVARCHAR(255), 
@Active_In           BIT,
@CreatedBy_In INT,
@AttachmentIdImagee_In int,
@AttachmentIdDocApproved_In int

as


	

		BEGIN
		-- insert update
	  INSERT INTO Worker
     (WorkerCode, 
      Title, 
      FirstName, 
      LastName, 
      IdentificationNo, 
      PassportNo, 
      Phone, 
      Address, 
      ProjectId, 
      WageId, 
      WorkStatus, 
      Remark, 
      RunningNo,
	  AliasName,
      Active, 
      CreatedBy, 
      CreatedDate,
	  AttachmentIdImage,
	  AttachmentIdDocApproved
     )

     VALUES
     (@WorkerCode_In, 
      @Title_In, 
      @FirstName_In, 
      @LastName_In, 
      @IdentificationNo_In, 
      @PassportNo_In, 
      @Phone_In, 
      @Address_In, 
      @ProjectId_In, 
      @WageId_In, 
      @WorkStatus_In, 
      @Remark_In, 
      @RunningNo_In, 
      @AliasName_In, 
      @Active_In, 
      @CreatedBy_In, 
	  GetDate(),
	  @AttachmentIdImagee_In,
	  @AttachmentIdDocApproved_In
     )
	
	

		END




		BEGIN
		SELECT	0 as StatusMonthWageActive,* from WorkerView Where Worker_WorkerCode=@WorkerCode_In   ;
		END
	
	--BEGIN CATCH
	--	SELECT MessageReturn = ERROR_MESSAGE();
	--END CATCH
GO
