SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RecordWorkingSummaryStatement_CREATE] @RecordWorkingDate DATE     = NULL, 
                                                              @CreatedDate       DATETIME = NULL, 
                                                              @CreatedBy         INT      = NULL
AS
     INSERT INTO [dbo].[RecordWorkingSummaryStatement]
     (RecordWorkingDate, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@RecordWorkingDate, 
      @CreatedDate, 
      @CreatedBy
     );
GO
