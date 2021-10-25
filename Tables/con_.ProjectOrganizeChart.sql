CREATE TABLE [con].[ProjectOrganizeChart]
(
[EmployeeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[Active] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectOrganizeChart] ADD CONSTRAINT [PK_OrganizeChart_1] PRIMARY KEY CLUSTERED  ([EmployeeCode], [ProjectCode]) ON [PRIMARY]
GO
