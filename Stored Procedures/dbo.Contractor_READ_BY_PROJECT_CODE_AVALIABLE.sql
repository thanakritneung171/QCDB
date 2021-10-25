SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Contractor_READ_BY_PROJECT_CODE_AVALIABLE]
@DailyCode NVARCHAR(50) = NULL,
@Date DATE = NULL
AS
BEGIN	
	SELECT	v.* 
	FROM  [dbo].[ContractorView] v	
	WHERE v.Contractor_Active = 1
	AND v.Contractor_Active = 1
	AND v.Contractor_ContractorCode NOT IN (
			SELECT	d.ContractorCode
			FROM	[dbo].[RecordWorkingDetail] d			
				JOIN [dbo].[RecordWorking] r ON d.DailyCode = r.DailyCode
			WHERE d.IsContractor = 1
				AND d.DailyCode != ISNULL(@DailyCode, '')
				AND r.Date = ISNULL(@Date, r.Date)
				AND d.IsActive = 1
		)
END

GO
