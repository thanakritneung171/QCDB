SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInHouse_CREATE] @HouseId     INT           = NULL, 
                                              @ProjectCode NVARCHAR(10)  = NULL, 
                                              @Note        NVARCHAR(255) = NULL, 
                                              @CreatedDate DATETIME      = NULL, 
                                              @CreatedBy   INT           = NULL, 
                                              @Status      INT           = NULL
AS
     INSERT INTO [con].[ProjectInHouse]
     ([HouseId], 
      [ProjectCode], 
      [Note], 
      [Active], 
      [CreatedDate], 
      [CreatedBy], 
      [Status]
     )
     VALUES
     (@HouseId, 
      @ProjectCode, 
      @Note, 
      1, 
      @CreatedDate, 
      @CreatedBy, 
      @Status
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
