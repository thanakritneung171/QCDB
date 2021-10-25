CREATE TABLE [con].[QCCheck]
(
[ID] [int] NOT NULL,
[QCRequestId] [int] NOT NULL,
[AssignDate] [datetime] NOT NULL,
[AssingTo] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CheckTime] [smallint] NOT NULL,
[CheckedDate] [datetime] NULL,
[Checked] [bit] NULL,
[CheckedRemark] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Verified] [bit] NULL,
[VerifiedRemark] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VerifiedDate] [datetime] NULL,
[VerifiedBy] [int] NULL,
[Status] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[QCCheck] ADD CONSTRAINT [PK__QCCheck__3214EC273EEFFE4A] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
