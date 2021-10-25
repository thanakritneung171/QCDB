SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_CREATE] @ProjectCode VARCHAR(10)   = NULL, 
                                              @PlanCode    VARCHAR(10)   = NULL, 
                                              @Description NVARCHAR(256) = NULL, 
                                              @CreatedDate DATETIME      = NULL, 
                                              @CreatedBy   INT           = NULL
AS
     INSERT INTO [con].[ProjectInPlan]
     (ProjectCode, 
      PlanCode, 
      Description, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@ProjectCode, 
      @PlanCode, 
      @Description, 
      @CreatedDate, 
      @CreatedBy
     );
GO
