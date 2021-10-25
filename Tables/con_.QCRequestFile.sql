CREATE TABLE [con].[QCRequestFile]
(
[Id] [int] NULL,
[Pathfile] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileType] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileNameOriginal] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[QCRequestId] [int] NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UnitId] [int] NULL
) ON [PRIMARY]
GO
