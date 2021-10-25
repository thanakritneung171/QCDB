SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_UPDATE] 
	@DailyCode          NVARCHAR(20) = NULL, 
	@ProjectCode        NVARCHAR(10) = NULL, 
	@Date               DATETIME = NULL, 
	@TotalWorker        INT = NULL, 
	@TotalFullTime      INT = NULL, 
	@TotalPartTime      INT = NULL, 
	@TotalOvertime      INT = NULL, 
	@TotalQuota         INT = NULL, 
	@AverageWage        DECIMAL(10, 2) = NULL, 
	@TotalWage          DECIMAL(10, 2) = NULL, 
	@Status             INT = NULL, 
	@PictureTime        DATETIME = NULL, 
	@DetailTime         DATETIME = NULL, 
	@SummaryTime        DATETIME = NULL, 
	@Remark             NVARCHAR(255) = NULL, 
	@ModifiedDate       DATETIME = NULL, 
	@ModifiedBy         INT = NULL, 
	@ConfigId           INT = NULL, 
	@SummaryBy          INT = NULL
AS
BEGIN
     UPDATE RecordWorking
       SET 
           ProjectCode = @ProjectCode, 
           Date = @Date, 
           TotalWorker = @TotalWorker, 
           TotalFullTime = @TotalFullTime, 
           TotalPartTime = @TotalPartTime, 
           TotalOvertime = @TotalOvertime, 
           TotalQuota = @TotalQuota, 
           AverageWage = @AverageWage, 
           TotalWage = @TotalWage, 
           Status = @Status, 
           PictureTime = @PictureTime, 
           DetailTime = @DetailTime, 
           SummaryTime = @SummaryTime, 
           Remark = @Remark, 
           ModifiedDate = GETDATE(), 
           ModifiedBy = @ModifiedBy,          
           ConfigId = @ConfigId,		 
		   SummaryBy = @SummaryBy
     WHERE DailyCode = @DailyCode;

	 SELECT	* FROM  [dbo].[RecordWorkingView] WHERE [RecordWorking_DailyCode] = @DailyCode
END
GO
