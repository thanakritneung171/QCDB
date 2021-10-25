SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractor_UPDATE] @PayContractorCode  VARCHAR(10)   = NULL, 
                                             @Status             INT           = NULL, 
                                             @Active             BIT           = NULL, 
                                             @SubmitApproveDate  DATETIME      = NULL, 
                                             @SubmitApproveBy    INT           = NULL, 
                                             @LastApproveDate    DATETIME      = NULL, 
                                             @LastApproveBy      INT           = NULL, 
                                             @VerifiedLevel1Date DATETIME      = NULL, 
                                             @VerifiedLevel1By   INT           = NULL, 
                                             @VerifiedLevel2Date DATETIME      = NULL, 
                                             @VerifiedLevel2By   INT           = NULL, 
                                             @VerifyNote       NVARCHAR(MAX) = NULL, 
                                             @IsPass             BIT           = NULL
AS
     UPDATE [con].[PayContractor]
       SET 
           STATUS = @Status, 
           Active = @Active, 
           SubmitApproveDate = @SubmitApproveDate, 
           SubmitApproveBy = @SubmitApproveBy, 
           LastApproveDate = @LastApproveDate, 
           LastApproveBy = @LastApproveBy, 
           VerifiedLevel1Date = @VerifiedLevel1Date, 
           VerifiedLevel1By = @VerifiedLevel1By, 
           VerifiedLevel2Date = @VerifiedLevel2Date, 
           VerifiedLevel2By = @VerifiedLevel2By, 
           VerifyNote = @VerifyNote, 
           IsPass = @IsPass
     WHERE PayContractorCode = @PayContractorCode;
GO
