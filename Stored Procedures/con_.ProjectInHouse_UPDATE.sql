SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInHouse_UPDATE] @Id           INT           = NULL, 
                                              @HouseId      INT           = NULL, 
                                              @ProjectCode  NVARCHAR(10)  = NULL, 
                                              @Note         NVARCHAR(255) = NULL, 
                                              @Active       BIT           = NULL, 
                                              @ModifiedDate DATETIME      = NULL, 
                                              @ModifiedBy   INT           = NULL, 
                                              @Status       INT           = NULL
AS
     UPDATE [con].[ProjectInHouse]
       SET 
           [HouseId] = @HouseId, 
           [ProjectCode] = @ProjectCode, 
           [Note] = @Note, 
           [Active] = @Active, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [Status] = @Status
     WHERE Id = @Id;
GO
