SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DescriptionWork_READ_ALL]
AS
BEGIN	
	SELECT	* 
	FROM  [dbo].[DescriptionWorkView]
END

GO
