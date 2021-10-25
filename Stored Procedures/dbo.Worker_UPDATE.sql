SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_UPDATE] @WorkerCode       VARCHAR(10), 
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
                                      @ApprovedDate     DATETIME, 
                                      @ApprovedBy       INT, 
                                      @ModifiedDate     DATETIME, 
                                      @ModifiedBy       INT, 
                                      @AliasName        NVARCHAR(50)
AS
     UPDATE Worker
       SET 
           Title = @Title, 
           FirstName = @FirstName, 
           LastName = @LastName, 
           IdentificationNo = @IdentificationNo, 
           PassportNo = @PassportNo, 
           Address = @Address, 
		   Phone = @Phone,
           ProjectId = @ProjectId, 
           WageId = @WageId, 
           WorkStatus = @WorkStatus, 
           Remark = @Remark, 
           Active = @Active, 
           RunningNo = @RunningNo, 
           ApprovedDate = @ApprovedDate, 
           ApprovedBy = @ApprovedBy, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy,
		   AliasName = @AliasName
     WHERE WorkerCode = @WorkerCode;
GO
