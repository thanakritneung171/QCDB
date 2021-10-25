SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlanMaster_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                           @Code                 VARCHAR(10)   = NULL, 
                                                           @ProjectCode          VARCHAR(10)   = NULL, 
                                                           @Status               INT           = NULL, 
                                                           @Type                 INT           = NULL, 
                                                           @Active               BIT           = NULL, 
                                                           @CreatedDate          DATETIME      = NULL, 
                                                           @CreatedBy            INT           = NULL, 
                                                           @ModifiedDate         DATETIME      = NULL, 
                                                           @ModifiedBy           INT           = NULL, 
                                                           @RequestApproveDate   DATETIME      = NULL, 
                                                           @RequestApproveBy     INT           = NULL, 
                                                           @ApprovedDate         DATETIME      = NULL, 
                                                           @ApprovedBy           INT           = NULL, 
                                                           @Note                 NVARCHAR(256) = NULL, 
                                                           @SearchDateForm       DATETIME      = NULL, 
                                                           @SearchDateTo         DATETIME      = NULL, 
                                                           @RejectReason         NVARCHAR(MAX) = NULL, 
                                                           @IsUpdateProgress     BIT           = NULL,
														   @IsVerified			 BIT		   = NULL,
														   @VerifyNote			 NVARCHAR(256) = NULL,
														   @VerifiedDate		 DATETIME	= NULL,
														   @VerifiedBy			 INT	= NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectConstructionPlanMaster_Create] 
                     @Code, 
                     @ProjectCode, 
                     @Status, 
                     @Type, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @RequestApproveDate, 
                     @RequestApproveBy, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @Note,
					 @IsUpdateProgress
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectConstructionPlanMaster_UPDATE] 
                     @Code, 
                     @ProjectCode, 
                     @Status, 
                     @Type, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @RequestApproveDate, 
                     @RequestApproveBy, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @Note, 
                     @RejectReason,
					 @IsUpdateProgress,
					 @IsVerified,
					 @VerifyNote,
					 @VerifiedDate,
					 @VerifiedBy	
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectConstructionPlanMaster_READ_BY] 
                     @Code;
        END;
        IF @Control_Character_In = 'readByLast'
            BEGIN
                EXEC [con].[ProjectConstructionPlanMaster_READ_BY_LAST] 
                     @ProjectCode, 
                     @Type, 
                     @Status,
					 @IsUpdateProgress
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectConstructionPlanMaster_SELECT] 
                     @ProjectCode, 
                     @Type, 
                     @Status, 
                     @SearchDateForm, 
                     @SearchDateTo,
					 @IsUpdateProgress
        END;
    END;
        SET ANSI_NULLS ON;
GO
