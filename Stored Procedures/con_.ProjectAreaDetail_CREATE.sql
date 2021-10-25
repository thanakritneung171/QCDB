SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_CREATE] @ProjectCode  VARCHAR(10)    = NULL, 
                                                  @BuildingType INT            = NULL, 
                                                  @BuildingId   INT            = NULL, 
                                                  @Amount       DECIMAL(10, 2)  = NULL, 
                                                  @Area         DECIMAL(10, 2)  = NULL, 
                                                  @CreatedDate  DATETIME       = NULL, 
                                                  @CreatedBy    INT            = NULL
AS
     INSERT INTO [con].[ProjectAreaDetail]
     (ProjectCode, 
      BuildingType, 
      BuildingId, 
      Amount, 
      Area, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@ProjectCode, 
      @BuildingType, 
      @BuildingId, 
      @Amount, 
      @Area, 
      @CreatedDate, 
      @CreatedBy
     );
GO
