SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_DELETE_NEW] 
-- Add the parameters for the stored procedure here
@WorkerCode_In       VARCHAR(10)
AS
     Update  Worker Set 		
			Active=0			
		WHERE WorkerCode= @WorkerCode_In; 
	 
GO
