SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkAtProject_READ_BY] 
	@ProjectId int = NULL
AS
     SELECT *
     FROM WorkAtProject
     WHERE ProjectId = @ProjectId






GO
