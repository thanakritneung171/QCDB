CREATE TABLE [MAC].[HistoryRenewBookMachine]
(
[BookMachineId] [int] NOT NULL,
[OldStartDate] [date] NOT NULL,
[NewStartDate] [date] NOT NULL,
[OldEndDate] [date] NOT NULL,
[NewEndDate] [date] NOT NULL,
[Status] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL
) ON [PRIMARY]
GO
