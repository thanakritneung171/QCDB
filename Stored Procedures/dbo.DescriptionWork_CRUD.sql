SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DescriptionWork_CRUD] 

			@Control_Character_In NVARCHAR(100) = NULL, 
			@DesId int						= NULL	   ,
			@DescriptionName	nvarchar(255)		= NULL	   ,
			@Active	bit						= NULL	   ,
			@CreatedDate	datetime		= NULL	   ,
			@CreatedBy	int					= NULL	   ,
			@ModifiedDate	datetime			= NULL ,
			@ModifiedBy	int						= NULL    
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [DescriptionWork_CREATE] 
                    @DescriptionName,
					@Active			,
					@CreatedDate	,
					@CreatedBy		
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [DescriptionWork_UPDATE] 
                    @DesId ,
					@DescriptionName,
					@Active,
					@ModifiedDate,
					@ModifiedBy
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [DescriptionWork_READ_BY] 
                     @DesId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC[DescriptionWork_SELECT] 
                     @DesId
        END;
    END;
        SET ANSI_NULLS ON;






GO
