SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_UPDATE] @Id           INT            = NULL, 
                                                  @ProjectCode  VARCHAR(10)    = NULL, 
                                                  @BuildingType INT            = NULL, 
                                                  @BuildingId   INT            = NULL, 
                                                  @Amount       DECIMAL(10, 2)  = NULL, 
                                                  @Area         DECIMAL(10, 2)  = NULL, 
                                                  @ModifiedDate DATETIME       = NULL, 
                                                  @ModifiedBy   INT            = NULL
AS
     UPDATE [con].[ProjectAreaDetail]
       SET 
           ProjectCode = @ProjectCode, 
           BuildingType = @BuildingType, 
           BuildingId = @BuildingId, 
           Amount = @Amount, 
           Area = @Area, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
