CREATE TABLE [con].[ProjectConstructionPlanMaster]
(
[Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [int] NOT NULL,
[Type] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[RequestApproveDate] [datetime] NULL,
[RequestApproveBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RejectReason] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsUpdateProgress] [bit] NULL,
[IsVerified] [bit] NULL,
[VerifyNote] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VerifiedDate] [datetime] NULL,
[VerifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectConstructionPlanMaster] ADD CONSTRAINT [PK_ProjectConstructionPlanMaster] PRIMARY KEY CLUSTERED  ([Code]) ON [PRIMARY]
GO
