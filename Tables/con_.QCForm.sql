CREATE TABLE [con].[QCForm]
(
[FormId] [int] NOT NULL,
[FormName] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[QCForm] ADD CONSTRAINT [PK__QCForm__FB05B7DD342ECBAA] PRIMARY KEY CLUSTERED  ([FormId]) ON [PRIMARY]
GO
