SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Wage_CRUD] 

			@Control_Character_In NVARCHAR(100) = NULL, 
			@WageId int						= NULL	   ,
			@WorkerCode	varchar(10)			= NULL	   ,
			@Wage	decimal(10, 2)			= NULL	   ,
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
                EXEC [Wage_CREATE] 
                    @WorkerCode,
					@Wage			,
					@StartDate		,
					@Active			,
					@ApprovedDate	,
					@ApprovedBy		,
					@CreatedDate	,
					@CreatedBy		
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [Wage_UPDATE] 
                    @WageId ,
					@WorkerCode,
					@Wage,
					@StartDate,
					@Active,
					@ApprovedDate,
					@ApprovedBy,
					@ModifiedDate,
					@ModifiedBy
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [Wage_READ_BY] 
                     @WageId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC[Wage_SELECT] 
                     @WageId
        END;
    END;
        SET ANSI_NULLS ON;






GO
