SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkAtProject_CRUD] 

			@Control_Character_In NVARCHAR(100) = NULL, 
			@ProjectId int						= NULL	   ,
			@WorkerCode	varchar(10)			= NULL	   ,
			@ProjectCode	varchar(10)			= NULL	   ,
			@StartDate	datetime			= NULL	   ,
			@Active	bit						= NULL	   ,
			@ApprovedDate	datetime		= NULL	   ,
			@ApprovedBy	int					= NULL	   ,
			@CreatedDate	datetime		= NULL	   ,
			@CreatedBy	int					= NULL	   ,
			@ModifiedDate	datetime			= NULL ,
			@ModifiedBy	int						= NULL    
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [WorkAtProject_CREATE] 
                    @WorkerCode     ,
					@ProjectCode	,
					@StartDate		,
					@Active			,
					@ApprovedDate	,
					@ApprovedBy		,
					@CreatedDate	,
					@CreatedBy		
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [WorkAtProject_UPDATE] 
                    @ProjectId ,
					@WorkerCode,
					@ProjectCode,
					@StartDate,
					@Active,
					@ApprovedDate,
					@ApprovedBy,
					@ModifiedDate,
					@ModifiedBy
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [WorkAtProject_READ_BY] 
                     @ProjectId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC[WorkAtProject_SELECT] 
                     @ProjectId
        END;
    END;
        SET ANSI_NULLS ON;






GO
