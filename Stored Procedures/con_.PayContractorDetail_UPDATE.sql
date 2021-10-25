SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorDetail_UPDATE] @Id           VARCHAR(10)   = NULL, 
                                                   @Status       INT           = NULL, 
                                                   @Active       BIT           = NULL, 
                                                   @NoteApprove  NVARCHAR(MAX) = NULL, 
                                                   @PaymentCode  VARCHAR(10)   = NULL, 
                                                   @ApproveDate  DATETIME      = NULL, 
                                                   @ApproveBy    INT           = NULL, 
                                                   @RejectReason NVARCHAR(255) = NULL
AS
     UPDATE [con].[PayContractorDetail]
       SET 
           STATUS = @Status, 
           Active = @Active, 
           NoteApprove = @NoteApprove, 
           PaymentCode = @PaymentCode, 
           ApproveDate = @ApproveDate, 
           ApproveBy = @ApproveBy, 
           RejectReason = @RejectReason
     WHERE Id = @Id;
/****** Object:  StoredProcedure [con].[Payment_CREATE]    Script Date: 4/3/2564 13:13:11 ******/
SET ANSI_NULLS ON
GO
