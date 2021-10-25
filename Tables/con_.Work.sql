CREATE TABLE [con].[Work]
(
[Id] [int] NOT NULL,
[ProjectTypeId] [int] NOT NULL,
[WorkGroupMainId] [int] NOT NULL,
[WorkGroupId] [int] NOT NULL,
[WorkName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Number] [int] NULL,
[WorkUnit] [int] NULL,
[QCPassBeforePay] [bit] NULL,
[SetAmountBeforePay] [bit] NULL,
[IsNoPrice] [bit] NULL,
[WorkAmountWeight] [int] NULL,
[Note] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[LastModifiedBy] [int] NOT NULL,
[IsOtherWork] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Work] ADD CONSTRAINT [PK_Work] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[Work] ADD CONSTRAINT [FK_Work_WorkGroupMain] FOREIGN KEY ([WorkGroupMainId]) REFERENCES [con].[WorkGroupMain] ([Id])
GO
