SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectType_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                          @Id                   INT           = NULL, 
                                          @ProjectTypeName      NVARCHAR(50)  = NULL, 
                                          @Active               BIT           = NULL, 
										  @Status				INT		      = NULL,
                                          @CreatedDate          DATETIME      = NULL, 
                                          @CreatedBy            INT           = NULL, 
                                          @ModifiedDate         DATETIME      = NULL, 
                                          @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectType_Create] 
                     @ProjectTypeName, 
                     @Active, 
					 @Status,
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectType_UPDATE] 
                     @Id, 
                     @ProjectTypeName, 
                     @Active, 
					 @Status,
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectType_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectType_SELECT]
				@Active,
				@Status
        END;
    END;
        SET ANSI_NULLS ON;





GO
