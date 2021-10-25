SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[File_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                  @FileId               INT           = NULL, 
                                  @DocId                INT           = NULL, 
                                  @FileName             NVARCHAR(256) = NULL, 
                                  @FileType             NVARCHAR(10)  = NULL, 
                                  @Size                 INT           = NULL, 
                                  @Path                 NVARCHAR(MAX) = NULL, 
                                  @Note                 NVARCHAR(256) = NULL, 
                                  @VersionName          NVARCHAR(256) = NULL, 
                                  @CreatedDate          DATETIME      = NULL, 
                                  @CreatedBy            INT           = NULL, 
                                  @IsCurrentVersion     BIT           = NULL, 
                                  @Type                 INT           = NULL, 
                                  @RefCode              VARCHAR(10)   = NULL, 
                                  @RefId                INT           = NULL, 
                                  @Active               BIT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[File_Create] 
                     @DocId, 
                     @FileName, 
                     @FileType, 
                     @Size, 
					 @Path,
                     @Note, 
                     @VersionName, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @IsCurrentVersion, 
                     @Type, 
                     @RefCode, 
                     @RefId, 
                     @Active;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[File_UPDATE] 
                     @FileId, 
                     @DocId, 
                     @FileName, 
                     @FileType, 
                     @Size, 
					 @Path,
                     @Note, 
                     @VersionName, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @IsCurrentVersion, 
                     @Type, 
                     @RefCode, 
                     @RefId, 
                     @Active;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[File_READ_BY] 
                     @FileId, 
                     @RefCode, 
                     @RefId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[File_SELECT] 
                     @DocId, 
                     @IsCurrentVersion,					 
                     @Active
        END;
    END;
        SET ANSI_NULLS ON;
GO
