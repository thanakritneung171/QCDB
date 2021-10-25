SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectOrganizeChart_READ_BY] @EmployeeCode VARCHAR(50) = NULL, 
                                                     @ProjectCode  VARCHAR(10) = NULL
AS
     SELECT o.*
     FROM [con].[ProjectOrganizeChart] o
     WHERE o.EmployeeCode = @EmployeeCode
           AND o.ProjectCode = @ProjectCode;

GO
