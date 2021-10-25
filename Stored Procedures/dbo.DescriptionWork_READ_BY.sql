SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DescriptionWork_READ_BY] 
	@DesId int = NULL
AS
     SELECT *
     FROM DescriptionWork
     WHERE DesId = @DesId






GO
