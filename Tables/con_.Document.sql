CREATE TABLE [con].[Document]
(
[DocId] [int] NOT NULL IDENTITY(1, 1),
[DocTypeId] [int] NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[LastUpdateFileDate] [datetime] NULL,
[LastUodateFileBy] [int] NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Document] ADD CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED  ([DocId]) ON [PRIMARY]
GO
