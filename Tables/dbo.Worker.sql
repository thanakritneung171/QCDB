CREATE TABLE [dbo].[Worker]
(
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Title] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IdentificationNo] [nvarchar] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PassportNo] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectId] [int] NULL,
[WageId] [int] NULL,
[WorkStatus] [int] NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NULL,
[RunningNo] [int] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[AliasName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttachmentIdImage] [int] NULL,
[AttachmentIdDocApproved] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Worker] ADD CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED  ([WorkerCode]) ON [PRIMARY]
GO
