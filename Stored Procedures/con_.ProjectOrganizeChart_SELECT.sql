SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectOrganizeChart_SELECT] @EmployeeCode VARCHAR(50) = NULL, 
                                                    @ProjectCode  VARCHAR(10) = NULL
AS
     SELECT o.*
     FROM [con].[ProjectOrganizeChart] o
     WHERE(o.ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (o.EmployeeCode = @EmployeeCode
               OR @EmployeeCode IS NULL)
          AND o.Active = 1;

GO
