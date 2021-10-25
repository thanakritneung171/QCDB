SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Project_UPDATE] @ProjectCode            VARCHAR(10)   = NULL, 
                                       @ProjectName            NVARCHAR(100) = NULL, 
                                       @ComCode                VARCHAR(5)    = NULL, 
                                       @Address                NVARCHAR(256) = NULL, 
                                       @TotalDeedArea          VARCHAR(10)   = NULL, 
                                       @StartConstructionDate  DATETIME      = NULL, 
                                       @ProjectEngineer        VARCHAR(10)  = NULL, 
                                       @Active                 BIT           = NULL, 
                                       @ModifiedDate           DATETIME      = NULL, 
                                       @ModifiedBy             INT           = NULL
AS
     UPDATE [con].[Project]
       SET 
           ProjectName = @ProjectName, 
           ComCode = @ComCode, 
           Address = @Address, 
           TotalDeedArea = @TotalDeedArea, 
           StartConstructionDate = @StartConstructionDate, 
           ProjectEngineer = @ProjectEngineer, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE ProjectCode = @ProjectCode;
GO
