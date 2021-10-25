SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[File_CREATE] @DocId            INT           = NULL, 
                                    @FileName         NVARCHAR(256) = NULL, 
                                    @FileType         NVARCHAR(10)  = NULL, 
                                    @Size             INT           = NULL, 
                                    @Path             NVARCHAR(MAX) = NULL, 
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
     INSERT INTO [con].[File]
     (DocId, 
      FileName, 
      FileType, 
      Size, 
      Note, 
      Path, 
      VersionName, 
      CreatedDate, 
      CreatedBy, 
      IsCurrentVersion, 
      Type, 
      RefCode, 
      RefId, 
      Active
     )
     VALUES
     (@DocId, 
      @FileName, 
      @FileType, 
      @Size, 
      @Note, 
      @Path, 
      @VersionName, 
      @CreatedDate, 
      @CreatedBy, 
      @IsCurrentVersion, 
      @Type, 
      @RefCode, 
      @RefId, 
      @Active
     );
GO
