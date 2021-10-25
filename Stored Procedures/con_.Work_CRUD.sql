SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Work_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                   @Id                   INT           = NULL, 
                                   @ProjectTypeId        INT           = NULL, 
                                   @WorkGroupMainId      INT           = NULL, 
                                   @WorkGroupId          INT           = NULL, 
                                   @WorkName             NVARCHAR(255) = NULL, 
                                   @Number               INT           = NULL, 
                                   @WorkUnit             INT           = NULL, 
                                   @QCPassBeforePay      BIT           = NULL, 
                                   @SetAmountBeforePay   BIT           = NULL, 
                                   @IsNoPrice            BIT           = NULL, 
                                   @WorkAmountWeight     INT           = NULL, 
                                   @Note                 NVARCHAR(255) = NULL, 
                                   @Active               BIT           = NULL, 
                                   @LastModifiedDate     DATETIME      = NULL, 
                                   @LastModifiedBy       INT           = NULL, 
                                   @SearchWorkName       NVARCHAR(MAX) = NULL,
								   @IsOtherWork          BIT			= NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Work_Create] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupId, 
                     @Number, 
                     @LastModifiedDate, 
                     @LastModifiedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Work_UPDATE] 
                     @Id, 
                     @WorkName, 
                     @Number, 
                     @WorkUnit, 
                     @QCPassBeforePay, 
                     @SetAmountBeforePay, 
					 @IsNoPrice,
                     @WorkAmountWeight, 
                     @Note, 
                     @Active, 
                     @LastModifiedDate, 
                     @LastModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Work_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Work_SELECT] 
                     @ProjectTypeId, 
                     @WorkGroupMainId, 
                     @WorkGroupId, 
                     @Active, 
                     @SearchWorkName,
					 @IsOtherWork
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[Work_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;


GO
