CREATE TABLE [MAC].[RepairManGroupDetail]
(
[RepairManGroupId] [int] NOT NULL,
[UserId] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairManGroupDetail] ADD CONSTRAINT [PK_RepairManGroupDetail] PRIMARY KEY CLUSTERED  ([RepairManGroupId], [UserId]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairManGroupDetail] ADD CONSTRAINT [FK_RepairManGroupDetail_RepairManGroup] FOREIGN KEY ([RepairManGroupId]) REFERENCES [MAC].[RepairManGroup] ([RepairManGroupId])
GO
