SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlanMaster_UPDATE] @Code               VARCHAR(10)   = NULL, 
                                                             @ProjectCode        VARCHAR(10)   = NULL, 
                                                             @Status             INT           = NULL, 
                                                             @Type               INT           = NULL, 
                                                             @Active             BIT           = NULL, 
                                                             @CreatedDate        DATETIME      = NULL, 
                                                             @CreatedBy          INT           = NULL, 
                                                             @ModifiedDate       DATETIME      = NULL, 
                                                             @ModifiedBy         INT           = NULL, 
                                                             @RequestApproveDate DATETIME      = NULL, 
                                                             @RequestApproveBy   INT           = NULL, 
                                                             @ApprovedDate       DATETIME      = NULL, 
                                                             @ApprovedBy         INT           = NULL, 
                                                             @Note               NVARCHAR(256) = NULL, 
                                                             @RejectReason       NVARCHAR(MAX) = NULL,
															 @IsUpdateProgress   BIT           = NULL,
															 @IsVerified		 BIT		   = NULL,
															 @VerifyNote		 NVARCHAR(256) = NULL,
															 @VerifiedDate		 DATETIME	= NULL,
														     @VerifiedBy		 INT	= NULL
AS
     UPDATE [con].[ProjectConstructionPlanMaster]
       SET 
           ProjectCode = @ProjectCode, 
           STATUS = @Status, 
           Type = @Type, 
           Active = @Active, 
           CreatedDate = @CreatedDate, 
           CreatedBy = @CreatedBy, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy, 
           RequestApproveDate = @RequestApproveDate, 
           RequestApproveBy = @RequestApproveBy, 
           ApprovedDate = @ApprovedDate, 
           ApprovedBy = @ApprovedBy, 
           Note = @Note, 
           RejectReason = @RejectReason,
		   IsUpdateProgress = @IsUpdateProgress,
		   IsVerified = @IsVerified,
		   VerifyNote = @VerifyNote,
		   VerifiedDate =	@VerifiedDate,	
		   VerifiedBy =	@VerifiedBy	
     WHERE Code = @Code;
GO
