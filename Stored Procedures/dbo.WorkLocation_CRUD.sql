SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_CRUD] 

			@Control_Character_In NVARCHAR(100) = NULL, 
			@Id	int						=NULL,
				@MonthlyDetailId int   =NULL,
			@DailyDetailId	int			=NULL,
			@UnitId	int					=NULL,
			@UnitName	nvarchar(50)	=NULL,
			@FromProjectCode varchar(10)	=NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [WorkLocation_CREATE] 
                    @DailyDetailId,
					@MonthlyDetailId,
					@UnitId,
					@UnitName,
					@FromProjectCode
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [WorkLocation_UPDATE] 
					@Id,
                    @DailyDetailId,
					@MonthlyDetailId,
					@UnitId,
					@UnitName
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [WorkLocation_READ_BY] 
                     @DailyDetailId,
					 @MonthlyDetailId
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC[WorkLocation_SELECT] 
                     @Id
        END;
		 IF @Control_Character_In = 'delete'
            BEGIN
                EXEC[WorkLocation_DELETE] 
                     @DailyDetailId,
					 @MonthlyDetailId
        END;
    END;
        SET ANSI_NULLS ON;






GO
