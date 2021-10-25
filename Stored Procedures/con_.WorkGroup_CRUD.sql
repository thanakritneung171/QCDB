SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroup_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                        @Id                   INT           = NULL, 
                                        @ProjectTypeId        INT           = NULL, 
                                        @WorkGroupMainId      INT           = NULL, 
                                        @WorkGroupName        NVARCHAR(255) = NULL, 
                                        @Number               INT           = NULL, 
                                        @Status               INT           = NULL, 
                                        @Active               BIT           = NULL, 
                                        @CreatedDate          DATETIME      = NULL, 
                                        @CreatedBy            INT           = NULL, 
                                        @ModifiedDate         DATETIME      = NULL, 
                                        @ModifiedBy           INT           = NULL,
										@IsOtherWork          BIT			= NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkGroup_Create] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupName, 
                     @Number, 
                     @Status, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkGroup_UPDATE] 
                     @Id, 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupName, 
                     @Number, 
                     @Status, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[WorkGroup_DELETE] 
                     @Id;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkGroup_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkGroup_SELECT] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @Active,
					 @IsOtherWork
        END;
    END;
        SET ANSI_NULLS ON;





GO
