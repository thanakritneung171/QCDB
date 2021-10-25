SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DescriptionWork_SELECT] 

		@DesId int = NULL
AS
     SELECT *
     FROM DescriptionWork
     WHERE DesId = @DesId OR @DesId IS NULL






GO
