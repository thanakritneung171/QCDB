CREATE TABLE [MAC].[ApproveConfirmBookMachineDetail]
(
[ApproveConfirmBookMachineId] [int] NOT NULL,
[BookMachineId] [int] NOT NULL,
[Status] [int] NOT NULL,
[Code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CodeNumber] [int] NULL,
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MachineDescription] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[ApproveConfirmBookMachineDetail] ADD CONSTRAINT [PK_ApproveConfirmBookMachineDetail_1] PRIMARY KEY CLUSTERED  ([ApproveConfirmBookMachineId], [BookMachineId]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[ApproveConfirmBookMachineDetail] ADD CONSTRAINT [FK_ApproveConfirmBookMachineDetail_ApproveConfirmBookMachine] FOREIGN KEY ([ApproveConfirmBookMachineId]) REFERENCES [MAC].[ApproveConfirmBookMachine] ([Id])
GO
ALTER TABLE [MAC].[ApproveConfirmBookMachineDetail] ADD CONSTRAINT [FK_ApproveConfirmBookMachineDetail_BookMachine] FOREIGN KEY ([BookMachineId]) REFERENCES [MAC].[BookMachine] ([BookMachineId])
GO
