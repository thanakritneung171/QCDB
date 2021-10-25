CREATE TABLE [dbo].[HolidayType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[HolidayName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NULL,
[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HolidayType] ADD CONSTRAINT [PK__HolidayT__3214EC07589D9712] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
