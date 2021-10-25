SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkerWorkGroup_CRUD] 

			@Control_Character_In NVARCHAR(100) = NULL, 
			@WorkGroupId int						= NULL	   ,
			@WorkGroupName	nvarchar(50)		= NULL	   ,
			@Active	bit						= NULL	   ,
			@CreatedDate	datetime		= NULL	   ,
			@CreatedBy	int					= NULL	   ,
			@ModifiedDate	datetime			= NULL ,
			@ModifiedBy	int						= NULL    
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [WorkerWorkGroup_CREATE] 
                    @WorkGroupName,
					@Active			,
					@CreatedDate	,
					@CreatedBy		
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [WorkerWorkGroup_UPDATE] 
                    @WorkGroupId ,
					@WorkGroupName,
					@Active,
					@ModifiedDate,
					@ModifiedBy
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [WorkerWorkGroup_READ_BY] 
                     @WorkGroupId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC[WorkerWorkGroup_SELECT] 
                     @WorkGroupId
        END;
    END;
        SET ANSI_NULLS ON;






GO
