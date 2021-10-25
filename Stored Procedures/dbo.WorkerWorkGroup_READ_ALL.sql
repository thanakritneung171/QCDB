SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkerWorkGroup_READ_ALL] 
AS
BEGIN
     SELECT *
     FROM [dbo].[WorkerWorkGroupView]
	 WHERE WorkerWorkGroup_Active = 1
END






GO
