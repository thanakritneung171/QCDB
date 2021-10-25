SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectOrganizeChart_CREATE] @EmployeeCode VARCHAR(50) = NULL, 
                                                     @ProjectCode  VARCHAR(10) = NULL, 
                                                     @CreatedBy    INT         = NULL, 
                                                     @CreatedDate  DATETIME    = NULL, 
                                                     @Active       INT         = NULL
AS
     INSERT INTO [con].[ProjectOrganizeChart]
     (EmployeeCode, 
      ProjectCode, 
      CreatedBy, 
      CreatedDate, 
      Active
     )
     VALUES
     (@EmployeeCode, 
      @ProjectCode, 
      @CreatedBy, 
      @CreatedDate, 
      @Active
     );
GO
