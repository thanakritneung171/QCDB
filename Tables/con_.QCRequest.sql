CREATE TABLE [con].[QCRequest]
(
[Id] [int] NOT NULL,
[RequestDate] [datetime] NOT NULL,
[UnitId] [int] NOT NULL,
[QCFormDetailId] [int] NULL,
[QCName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Foreman] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteEng] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectEng] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Remark] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [smallint] NULL,
[SiteEngApproveBy] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteEngApproveDate] [datetime] NULL,
[ProjectEngApprovedBy] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectEngApprovedDate] [datetime] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[QCRequest] ADD CONSTRAINT [PK__QCReques__3214EC07EB98A96E] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
