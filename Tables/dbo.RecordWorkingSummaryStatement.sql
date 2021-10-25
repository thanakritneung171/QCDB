CREATE TABLE [dbo].[RecordWorkingSummaryStatement]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[RecordWorkingDate] [date] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorkingSummaryStatement] ADD CONSTRAINT [PK_RecordWorkingSummaryStatement] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
