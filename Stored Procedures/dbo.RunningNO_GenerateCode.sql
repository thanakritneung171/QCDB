SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:  <James>
-- ALTER date: <21/08/2561>
-- Description: <สร้างรหัสใบเบิก>
-- =============================================
CREATE PROCEDURE [dbo].[RunningNO_GenerateCode]   @Type NVARCHAR(100),
												  @MorePrefix NVARCHAR(50)
 -- Add the parameters for the stored procedure here
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
	 SET NOCOUNT ON;
	 DECLARE @Year INT;
	 DECLARE @CountRunningNo INT;
	 DECLARE @CountData INT;
	 DECLARE @Code NVARCHAR(50);

    -- Insert statements for procedure here
	 SET @Year = SUBSTRING(CONVERT(varchar(10), YEAR(GETDATE()) + 543),3,2)

	 SET @CountData =
	 (
	 	SELECT COUNT(*)
		FROM [dbo].RunningNO AS Running
		WHERE (Running.[Year] = @Year OR Running.[Year] IS NULL) AND Running.Type = @Type
	 );
 
 --  BEGIN
 	 if(@CountData = 0)			   
		  INSERT INTO dbo.RunningNO(Type,LengthNumber, Count,Year,Prefix)
		  select @Type,r.LengthNumber,0,@Year,r.Prefix
		  FROM dbo.RunningNO r
		  WHERE r.Type = @Type
		  ORDER BY r.Year DESC
	--END

	BEGIN
	    SET @Code = 
		(SELECT (r.Prefix + ISNULL(CONVERT(NVARCHAR(MAX),r.Year),'') + ISNULL(@MorePrefix,'')  + RIGHT('0000000000'+CONVERT(NVARCHAR(MAX), CAST((r.Count + 1) AS NVARCHAR)),r.LengthNumber))
		FROM dbo.RunningNO as r
		WHERE r.Type = @Type AND (r.Year = @Year OR r.Year IS NULL) );			
 		
		UPDATE dbo.RunningNO 
		SET RunningNO.Count = RunningNO.Count + 1
		WHERE RunningNO.Type = @Type AND ( RunningNO.Year = @Year OR RunningNO.Year IS NULL)

		SELECT @Code AS 'Code'
	END
END







GO
