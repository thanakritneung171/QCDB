CREATE TABLE [con].[CheckWork]
(
[Id] [int] NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HouseId] [int] NOT NULL,
[WorkId] [int] NOT NULL,
[WorkPriceId] [int] NOT NULL,
[UnitNumber] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QCPass] [bit] NULL,
[Amount] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedQCPassDate] [datetime] NULL,
[LastModifiedQCPassBy] [int] NULL,
[LastModifiedAmountDate] [datetime] NULL,
[LastModifiedAmountBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[CheckWork] ADD CONSTRAINT [PK_CheckWork] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
