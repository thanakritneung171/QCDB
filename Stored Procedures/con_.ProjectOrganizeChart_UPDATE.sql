SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectOrganizeChart_UPDATE] @EmployeeCode VARCHAR(50) = NULL, 
                                                     @ProjectCode  VARCHAR(10) = NULL, 
                                                     @ModifiedBy   INT         = NULL, 
                                                     @ModifiedDate DATETIME    = NULL, 
                                                     @Active       INT         = NULL
AS
     UPDATE [con].[ProjectOrganizeChart]
       SET 
           ModifiedBy = @ModifiedBy, 
           ModifiedDate = @ModifiedDate, 
           Active = @Active
     WHERE EmployeeCode = @EmployeeCode
           AND ProjectCode = @ProjectCode;
GO
