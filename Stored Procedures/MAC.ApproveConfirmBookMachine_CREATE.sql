SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachine_CREATE] @ApproveConfirmDate DATE     = NULL, 
                                                         @CreatedDate        DATETIME = NULL, 
                                                         @CreatedBy          INT      = NULL
AS
     INSERT INTO [MAC].[ApproveConfirmBookMachine]
     ([ApproveConfirmDate], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ApproveConfirmDate, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
