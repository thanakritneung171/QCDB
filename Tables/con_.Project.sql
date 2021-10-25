CREATE TABLE [con].[Project]
(
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[ProjectName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ComCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TotalDeedArea] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartConstructionDate] [datetime] NULL,
[ProjectEngineer] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Project] ADD CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED  ([ProjectCode]) ON [PRIMARY]
GO
