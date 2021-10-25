SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[User_READ_BY_PROJECT_CODE]
@ProjectCode NVARCHAR(50) = NULL
AS
BEGIN	
	SELECT	u.* 
	FROM  [dbo].[UserView] u
	JOIN [con].ProjectOrganizeChart p ON u.Employee_UserName = p.EmployeeCode
	WHERE p.ProjectCode = @ProjectCode
	AND p.Active = 1
END

GO
