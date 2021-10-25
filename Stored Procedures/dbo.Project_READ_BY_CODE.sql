SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Project_READ_BY_CODE]
@Code NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	v.*
	FROM  [dbo].[ProjectView] v
	WHERE v.Project_ProjectCode = @Code
	AND v.Project_Active = 1
END
GO
