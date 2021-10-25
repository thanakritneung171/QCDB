CREATE TABLE [con].[QCFormDetail]
(
[Id] [int] NOT NULL,
[FormId] [int] NOT NULL,
[Number] [int] NOT NULL,
[WorkId] [int] NULL,
[QCName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Review] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Progress] [decimal] (5, 2) NULL,
[SetNumber] [int] NULL,
[AttachedFile] [bit] NULL,
[Active] [bit] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[WorkGroupMainId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[QCFormDetail] ADD CONSTRAINT [PK__QCFormDe__3214EC07B480A629] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
