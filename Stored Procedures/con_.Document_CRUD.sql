SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Document_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                       @DocId                INT           = NULL, 
                                       @DocTypeId            INT           = NULL, 
                                       @ProjectCode          VARCHAR(10)   = NULL, 
                                       @Note                 NVARCHAR(256) = NULL, 
                                       @Active               BIT           = NULL, 
                                       @LastUpdateFileDate   DATETIME      = NULL, 
                                       @LastUodateFileBy     INT           = NULL, 
                                       @CreatedDate          DATETIME      = NULL, 
                                       @CreatedBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Document_Create] 
                     @DocTypeId, 
                     @ProjectCode, 
                     @Note, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Document_UPDATE] 
                     @DocId, 
                     @Note, 
                     @Active, 
					 @LastUpdateFileDate,
					 @LastUodateFileBy
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Document_READ_BY] 
                     @DocId, 
                     @DocTypeId,					 
                     @ProjectCode
        END;
    END;
        SET ANSI_NULLS ON;
GO
