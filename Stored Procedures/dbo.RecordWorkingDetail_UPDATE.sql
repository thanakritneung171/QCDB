SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_UPDATE] 
@DailyDetailId INT = NULL,
@DailyCode     NVARCHAR(20) = NULL, 
@WorkerCode    NVARCHAR(10) = NULL, 
@WorkType      INT = NULL, 
@WorkGroup     INT = NULL, 
@WorkTime      INT = NULL, 
@Round         INT = NULL, 
@Description   NVARCHAR(255) = NULL, 
@Remark        NVARCHAR(255) = NULL, 
@TotalOverTime FLOAT = NULL,
@Owner		NVARCHAR(50) = NULL,
@HasDefaultMonthly  BIT = NULL,
@Wage			DECIMAL(18,4) = NULL,
@Amount		DECIMAL(18,5) = NULL,
@Total		DECIMAL(18,2) = NULL,
@ContractorCode NVARCHAR(10) = NULL,
@IsContractor   INT = NULL, 
@IsCover        INT = NULL, 
@TravelExpensesType INT = NULL, 
@TravelExpenses DECIMAL(18,2) = NULL,
@Represent      NVARCHAR(100) = NULL, 
@IsActive       INT = NULL,
@ProjectCode    NVARCHAR(10) = NULL,
@IsExternal     INT = NULL,
@DescriptionWork INT = NULL,
@Holiday INT = NULL
AS
BEGIN
     UPDATE [dbo].[RecordWorkingDetail]
	   SET [DailyCode] = @DailyCode
		  ,[WorkerCode] = @WorkerCode
		  ,[WorkType] = @WorkType
		  ,[WorkGroup] = @WorkGroup
		  ,[WorkTime] = @WorkTime
		  ,[Round] = @Round
		  ,[Description] = @Description
		  ,[Remark] = @Remark
		  ,[TotalOverTime] = @TotalOverTime
		  ,[Owner] = @Owner
		  ,[HasDefaultMonthly] = @HasDefaultMonthly
		  ,[Wage] = @Wage
		  ,[Amount] = @Amount
		  ,[Total] = @Total
		  ,[ContractorCode] = @ContractorCode
		  ,[IsContractor] = @IsContractor
		  ,[IsCover] = @IsCover
		  ,[TravelExpensesType] = @TravelExpensesType
		  ,[TravelExpenses] = @TravelExpenses
		  ,[Represent] = @Represent
		  ,[IsActive] = @IsActive
		  ,[ProjectCode] = @ProjectCode
		  ,[IsExternal] = @IsExternal
		  ,[DescriptionWork] = @DescriptionWork
		  ,[Holiday] = @Holiday
	 WHERE DailyDetailId = @DailyDetailId

	 SELECT	* FROM  [dbo].[RecordWorkingDetailView] WHERE [RecordWorkingDetail_DailyDetailId]  = @DailyDetailId
END






GO
