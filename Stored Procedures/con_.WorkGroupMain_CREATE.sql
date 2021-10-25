SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroupMain_CREATE] @ProjectTypeId INT          = NULL, 
                                              @MainName      NVARCHAR(50) = NULL, 
                                              @Active        BIT          = NULL, 
                                              @CreatedDate   DATETIME     = NULL, 
                                              @CreatedBy     INT          = NULL
AS
     INSERT INTO [con].[WorkGroupMain]
     ([ProjectTypeId], 
      [MainName], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ProjectTypeId, 
      @MainName, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;





GO
