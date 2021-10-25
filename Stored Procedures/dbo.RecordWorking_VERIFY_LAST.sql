SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorking_VERIFY_LAST] 
 @DailyCode     NVARCHAR(20) = NULL, 
 @Status        INT= NULL, 
 @Remark        NVARCHAR(255)= NULL,
 @UserId        INT= NULL
AS
BEGIN
     UPDATE RecordWorking
       SET 
           LastVerifiedDate = GETDATE(), 
           LastVerifiedBy = @UserId, 
           LastVerifiedRemark = @Remark, 
           LastVerifiedStatus = @Status,
		   Status = CASE WHEN @Status = 2 THEN 4 ELSE 5 END

     WHERE DailyCode = @DailyCode;

	 SELECT	* FROM  [dbo].[RecordWorkingView] WHERE [RecordWorking_DailyCode] = @DailyCode
END
GO
