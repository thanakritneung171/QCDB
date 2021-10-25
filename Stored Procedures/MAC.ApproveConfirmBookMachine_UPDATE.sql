SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachine_UPDATE] @Id           INT      = NULL, 
                                                          @ModifiedDate DATETIME = NULL, 
                                                          @ModifiedBy   INT      = NULL
AS
     UPDATE [MAC].[ApproveConfirmBookMachine]
       SET 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
