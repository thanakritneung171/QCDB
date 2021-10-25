SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyAttachment_READ_BY_DAILY_CODE]
@MonthlyCode NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[ApprovedMonthlyAttachmentView]
	WHERE [ApprovedMonthlyAttachment_MonthlyCode] = @MonthlyCode
	AND ApprovedMonthlyAttachment_IsActive = 1
END

GO
