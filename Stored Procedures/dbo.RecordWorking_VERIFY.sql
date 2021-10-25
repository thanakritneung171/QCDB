SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorking_VERIFY] 
 @DailyCode     NVARCHAR(20) = NULL, 
 @Status        INT= NULL, 
 @Remark        NVARCHAR(255)= NULL,
 @UserId        INT= NULL
AS
BEGIN
     UPDATE RecordWorking
       SET 
           VerifiedDate = GETDATE(), 
           VerifiedBy = @UserId, 
           VerifiedRemark = @Remark, 
           VerifiedStatus = @Status, 
           Status = 4
     WHERE DailyCode = @DailyCode;

	 SELECT	* FROM  [dbo].[RecordWorkingView] WHERE [RecordWorking_DailyCode] = @DailyCode
END
GO
