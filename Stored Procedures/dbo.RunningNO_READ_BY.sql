SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:  <James>
-- ALTER date: <21/08/2561>
-- Description: <สร้างรหัสใบเบิก>
-- =============================================
CREATE PROCEDURE [dbo].[RunningNO_READ_BY]   @Type NVARCHAR(100),
											 @MorePrefix NVARCHAR(50)
 -- Add the parameters for the stored procedure here
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
	 SET NOCOUNT ON;
	 DECLARE @Year INT;
	 DECLARE @Code NVARCHAR(50);

    -- Insert statements for procedure here
	 SET @Year = SUBSTRING(CONVERT(varchar(10), YEAR(GETDATE()) + 543),3,2)
	 SET @Code = 
		(SELECT (r.Prefix + ISNULL(CONVERT(NVARCHAR(MAX),r.Year),'') + ISNULL(@MorePrefix,'')  + RIGHT('0000000000'+CONVERT(NVARCHAR(MAX), CAST((r.Count + 1) AS NVARCHAR)),r.LengthNumber))
		FROM dbo.RunningNO as r
		WHERE r.Type = @Type AND (r.Year = @Year OR r.Year IS NULL) );	

	 SELECT @Code as Code
END







GO
