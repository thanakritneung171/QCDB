SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Project_CREATE] @ProjectCode            VARCHAR(10)   = NULL, 
                                       @ProjectName            NVARCHAR(100) = NULL, 
                                       @ComCode                VARCHAR(5)    = NULL, 
                                       @Address                NVARCHAR(256) = NULL, 
                                       @TotalDeedArea          VARCHAR(10)   = NULL, 
                                       @StartConstructionDate  DATETIME      = NULL,  
                                       @ProjectEngineer        VARCHAR(10)  = NULL, 
                                       @CreatedDate            DATETIME      = NULL, 
                                       @CreatedBy              INT           = NULL
AS
     DECLARE @LastNumber INT;
     SET @LastNumber = 0;
     IF(
     (
         SELECT COUNT(*)
         FROM [con].[Project]
     ) > 0)
         BEGIN
             SET @LastNumber =
             (
                 SELECT TOP 1 Number
                 FROM [con].[Project]
                 ORDER BY Number DESC
             );
     END;
     SET @ProjectCode = 'P' + RIGHT('000' + CAST(@LastNumber + 1 AS VARCHAR(3)), 3);
     INSERT INTO [con].[Project]
     (ProjectCode, 
      Number, 
      ProjectName, 
      ComCode, 
      Address, 
      TotalDeedArea, 
      StartConstructionDate, 
      ProjectEngineer, 
      Active, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@ProjectCode, 
      @LastNumber + 1, 
      @ProjectName, 
      @ComCode, 
      @Address, 
      @TotalDeedArea, 
      @StartConstructionDate,  
      @ProjectEngineer, 
      1, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT @ProjectCode AS ProjectCode;
GO
