SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[RecordWorking_CREATE] 
 @DailyCode     NVARCHAR(20) = NULL, 
 @ProjectCode   NVARCHAR(10)= NULL, 
 @Date          DATETIME= NULL, 
 @TotalWorker   INT= NULL, 
 @TotalFullTime INT= NULL, 
 @TotalPartTime INT= NULL, 
 @TotalOvertime INT= NULL,  
 @TotalQuota    INT= NULL, 
 @AverageWage   DECIMAL(10, 2)= NULL, 
 @TotalWage     DECIMAL(10, 2)= NULL, 
 @Status        INT= NULL, 
 @PictureTime   DATETIME= NULL, 
 @DetailTime    DATETIME= NULL, 
 @SummaryTime	DATETIME= NULL, 
 @Remark        NVARCHAR(255)= NULL, 
 @CreatedDate   DATETIME= NULL, 
 @CreatedBy     INT= NULL,  
 @ConfigId		INT= NULL, 
 @SummaryBy		INT= NULL 
AS
BEGIN
     INSERT INTO [dbo].[RecordWorking]
           ([DailyCode]
           ,[ProjectCode]
           ,[Date]
           ,[TotalWorker]
           ,[TotalFullTime]
           ,[TotalPartTime]
           ,[TotalOvertime]
           ,[TotalQuota]
           ,[AverageWage]
           ,[TotalWage]
           ,[Status]
           ,[PictureTime]
           ,[DetailTime]
           ,[SummaryTime]
           ,[Remark]
           ,[CreatedDate]
           ,[CreatedBy]          
           ,[ConfigId]          
           ,[SummaryBy])
     VALUES
           (@DailyCode
           ,@ProjectCode
           ,@Date
           ,@TotalWorker
           ,@TotalFullTime
           ,@TotalPartTime
           ,@TotalOvertime
           ,@TotalQuota
           ,@AverageWage
           ,@TotalWage
           ,@Status
           ,@PictureTime
           ,@DetailTime
           ,@SummaryTime
           ,@Remark
           ,@CreatedDate
           ,@CreatedBy          
           ,@ConfigId
           ,@SummaryBy)

	 SELECT	* FROM  [dbo].[RecordWorkingView] WHERE [RecordWorking_DailyCode] = @DailyCode
END
GO
