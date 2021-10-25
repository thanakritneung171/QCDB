SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_CREATE] @ProjectCode    VARCHAR(10) = NULL, 
                                                   @ContractorCode VARCHAR(10) = NULL, 
                                                   @CreatedBy      INT         = NULL, 
                                                   @CreatedDate    DATETIME    = NULL
AS
     INSERT INTO [con].[ProjectInContractor]
     (ProjectCode, 
      ContractorCode, 
      CreatedBy, 
      CreatedDate
     )
     VALUES
     (@ProjectCode, 
      @ContractorCode, 
      @CreatedBy, 
      @CreatedDate
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
