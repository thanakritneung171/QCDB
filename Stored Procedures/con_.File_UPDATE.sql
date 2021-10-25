SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[File_UPDATE] @FileId           INT           = NULL, 
                                    @DocId            INT           = NULL, 
                                    @FileName         NVARCHAR(256) = NULL, 
                                    @FileType         NVARCHAR(10)  = NULL, 
                                    @Size             INT           = NULL, 
									@Path                 NVARCHAR(MAX) = NULL, 
                                    @Note             NVARCHAR(256) = NULL, 
                                    @VersionName      NVARCHAR(256) = NULL, 
                                    @CreatedDate      DATETIME      = NULL, 
                                    @CreatedBy        INT           = NULL, 
                                    @IsCurrentVersion BIT           = NULL, 
                                    @Type             INT           = NULL, 
                                    @RefCode          VARCHAR(10)   = NULL, 
                                    @RefId            INT           = NULL, 
                                    @Active           BIT           = NULL
AS
     UPDATE [con].[File]
       SET 
		   DocId = @DocId,
           FileName = @FileName, 
           FileType = @FileType, 
           Size = @Size, 
		   Path = @Path,
           Note = @Note, 
           VersionName = @VersionName, 
           CreatedDate = @CreatedDate, 
           CreatedBy = @CreatedBy, 
           IsCurrentVersion = @IsCurrentVersion, 
           Type = @Type, 
           RefCode = @RefCode, 
           RefId = @RefId, 
           Active = @Active
     WHERE FileId = @FileId;
GO
