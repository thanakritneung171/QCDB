CREATE TABLE [MAC].[HistoryUpdateMachineMaster]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Month] [int] NOT NULL,
[Year] [int] NOT NULL,
[FromDate] [date] NOT NULL,
[ToDate] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryUpdateMachineMaster] ADD CONSTRAINT [PK_HistoryUpdateMachineMaster] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
