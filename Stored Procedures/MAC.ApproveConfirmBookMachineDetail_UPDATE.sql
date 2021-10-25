SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_UPDATE] @ApproveConfirmBookMachineId INT, 
                                                               @BookMachineId               INT, 
                                                               @Code                        NVARCHAR(10), 
                                                               @Status                      INT, 
                                                               @ModifiedDate                DATETIME     = NULL, 
                                                               @ModifiedBy                  INT          = NULL
AS
     UPDATE [MAC].ApproveConfirmBookMachineDetail
       SET 
           STATUS = @Status,
		   ModifiedDate   = @ModifiedDate,
		   ModifiedBy     = @ModifiedBy  
     WHERE ApproveConfirmBookMachineId = @ApproveConfirmBookMachineId
           AND Code = @Code
           AND (BookMachineId = @BookMachineId
                OR @BookMachineId IS NULL);



/****** Object:  StoredProcedure [MAC].[ApproveConfirmBookMachineDetail_READ_BY]    Script Date: 17/12/2563 8:23:38 ******/
SET ANSI_NULLS ON
GO
