SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroupDetail_CREATE] @RepairManGroupId INT      = NULL, 
                                                     @UserId           INT      = NULL, 
                                                     @CreatedDate      DATETIME = NULL, 
                                                     @CreatedBy        INT      = NULL
AS
     INSERT INTO [MAC].[RepairManGroupDetail]
     ([RepairManGroupId], 
      [UserId], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@RepairManGroupId, 
      @UserId, 
      @CreatedDate, 
      @CreatedBy
     );
GO
