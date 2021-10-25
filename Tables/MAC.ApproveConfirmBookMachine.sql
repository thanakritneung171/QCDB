CREATE TABLE [MAC].[ApproveConfirmBookMachine]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ApproveConfirmDate] [date] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[ApproveConfirmBookMachine] ADD CONSTRAINT [PK_ApproveConfirmBookMachine] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
