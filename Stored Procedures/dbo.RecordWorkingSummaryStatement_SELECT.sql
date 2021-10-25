SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RecordWorkingSummaryStatement_SELECT] @RecordWorkingDate DATE = NULL
AS
     SELECT *
     FROM [dbo].[RecordWorkingSummaryStatement]
     WHERE RecordWorkingDate = @RecordWorkingDate;
GO
