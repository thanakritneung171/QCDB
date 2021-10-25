CREATE TABLE [dbo].[Wage]
(
[WageId] [int] NOT NULL IDENTITY(1, 1),
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Wage] [decimal] (10, 2) NULL,
[StartDate] [datetime] NULL,
[Active] [bit] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wage] ADD CONSTRAINT [PK_Wage] PRIMARY KEY CLUSTERED  ([WageId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wage] ADD CONSTRAINT [FK_Wage_Worker] FOREIGN KEY ([WorkerCode]) REFERENCES [dbo].[Worker] ([WorkerCode])
GO
