CREATE TABLE [con].[Plan]
(
[PlanCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[PlanName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PlanGroup] [int] NOT NULL,
[PlanType] [int] NULL,
[Area] [decimal] (10, 2) NULL,
[MinArea] [decimal] (10, 2) NULL,
[Floor] [int] NULL,
[BedRoom] [int] NULL,
[BathRoom] [int] NULL,
[Parking] [int] NULL,
[AreaUnit] [int] NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Plan] ADD CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED  ([PlanCode]) ON [PRIMARY]
GO
