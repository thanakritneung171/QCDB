SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInPlan_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                           @Id                   INT           = NULL, 
                                           @ProjectCode          VARCHAR(10)   = NULL, 
                                           @PlanCode             VARCHAR(10)   = NULL, 
                                           @Description          NVARCHAR(256) = NULL, 
                                           @CreatedDate          DATETIME      = NULL, 
                                           @CreatedBy            INT           = NULL, 
                                           @ModifiedDate         DATETIME      = NULL, 
                                           @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectInPlan_CREATE] 
                     @ProjectCode, 
                     @PlanCode, 
                     @Description, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectInPlan_UPDATE] 
                     @Id, 
                     @ProjectCode, 
                     @PlanCode, 
                     @Description, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectInPlan_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectInPlan_SELECT] 
                     @ProjectCode,
					 @PlanCode
        END;
		 IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectInPlan_DELETE] 
                     @Id;
        END;
		
    END;
        SET ANSI_NULLS ON;
GO
