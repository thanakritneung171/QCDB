CREATE TABLE [MAC].[RepairManGroup]
(
[RepairManGroupId] [int] NOT NULL IDENTITY(1, 1),
[RepairManGroupName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[RepairType] [int] NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairManGroup] ADD CONSTRAINT [PK_RepairManGroup] PRIMARY KEY CLUSTERED  ([RepairManGroupId]) ON [PRIMARY]
GO
