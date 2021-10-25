CREATE TABLE [con].[File]
(
[FileId] [int] NOT NULL IDENTITY(1, 1),
[DocId] [int] NOT NULL,
[FileName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FileType] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Size] [int] NOT NULL,
[Path] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VersionName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[IsCurrentVersion] [bit] NOT NULL,
[Type] [int] NULL,
[RefCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RefId] [int] NULL,
[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[File] ADD CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED  ([FileId]) ON [PRIMARY]
GO
ALTER TABLE [con].[File] ADD CONSTRAINT [FK_File_Document] FOREIGN KEY ([DocId]) REFERENCES [con].[Document] ([DocId])
GO
