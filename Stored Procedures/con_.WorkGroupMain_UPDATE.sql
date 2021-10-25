SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroupMain_UPDATE] @Id           INT          = NULL, 
                                              @MainName     NVARCHAR(50) = NULL, 
                                              @Active       BIT          = NULL, 
                                              @ModifiedDate DATETIME     = NULL, 
                                              @ModifiedBy   INT          = NULL
AS
     UPDATE [con].[WorkGroupMain]
       SET 
           [MainName] = @MainName, 
           [Active] = @Active, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;





GO
