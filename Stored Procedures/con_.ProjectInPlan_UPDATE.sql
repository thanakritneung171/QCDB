SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_UPDATE] @Id           INT           = NULL, 
                                              @ProjectCode  VARCHAR(10)   = NULL, 
                                              @PlanCode     VARCHAR(10)   = NULL, 
                                              @Description  NVARCHAR(256) = NULL, 
                                              @ModifiedDate DATETIME      = NULL, 
                                              @ModifiedBy   INT           = NULL
AS
     UPDATE [con].[ProjectInPlan]
       SET 
           ProjectCode = @ProjectCode, 
           PlanCode = @PlanCode, 
           Description = @Description, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
