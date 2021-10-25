SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_UPDATE] @Id             INT         = NULL,  
                                                   @ModifiedBy     INT         = NULL, 
                                                   @ModifiedDate   DATETIME    = NULL
AS
     UPDATE [con].[ProjectInContractor]
       SET 
           ModifiedBy = @ModifiedBy, 
           ModifiedDate = @ModifiedDate
     WHERE Id = @Id;
GO
