SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_CREATE] 
-- Add the parameters for the stored procedure here
@WorkerCode       VARCHAR(10), 
@Title            NVARCHAR(50), 
@FirstName        NVARCHAR(50), 
@LastName         NVARCHAR(50), 
@IdentificationNo NVARCHAR(13), 
@PassportNo       NVARCHAR(10), 
@Phone            NVARCHAR(10), 
@Address          NVARCHAR(255), 
@ProjectId        INT, 
@WageId           INT, 
@WorkStatus       INT, 
@Remark           NVARCHAR(255), 
@Active           BIT, 
@RunningNo        INT, 
@CreatedDate      DATETIME, 
@CreatedBy        INT, 
@ApprovedDate     DATETIME, 
@ApprovedBy       INT,
@AliasName        NVARCHAR(50)
AS
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
      Active, 
      RunningNo, 
      CreatedDate, 
      CreatedBy, 
      ApprovedDate, 
      ApprovedBy,
	  AliasName
     )
     VALUES
     (@WorkerCode, 
      @Title, 
      @FirstName, 
      @LastName, 
      @IdentificationNo, 
      @PassportNo, 
      @Phone, 
      @Address, 
      @ProjectId, 
      @WageId, 
      @WorkStatus, 
      @Remark, 
      @Active, 
      @RunningNo, 
      @CreatedDate, 
      @CreatedBy, 
      @ApprovedDate, 
      @ApprovedBy,
	  @AliasName
     );
GO
