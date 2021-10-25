CREATE TABLE [con].[PayContractor]
(
[PayContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodeNumber] [int] NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[SubmitApproveDate] [datetime] NULL,
[SubmitApproveBy] [int] NULL,
[LastApproveDate] [datetime] NULL,
[LastApproveBy] [int] NULL,
[VerifiedLevel1Date] [datetime] NULL,
[VerifiedLevel2Date] [datetime] NULL,
[VerifiedLevel1By] [int] NULL,
[VerifiedLevel2By] [int] NULL,
[NetPrice] [decimal] (10, 2) NULL,
[IsPass] [bit] NULL,
[VerifyNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[PayContractor] ADD CONSTRAINT [PK_PayContractorMaster] PRIMARY KEY CLUSTERED  ([PayContractorCode]) ON [PRIMARY]
GO
