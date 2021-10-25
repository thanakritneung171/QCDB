CREATE TABLE [dbo].[webpages_Membership]
(
[UserId] [int] NOT NULL,
[CreateDate] [datetime] NULL,
[ConfirmationToken] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsConfirmed] [bit] NULL CONSTRAINT [DF__webpages___IsCon__141CDE74] DEFAULT ((0)),
[LastPasswordFailureDate] [datetime] NULL,
[PasswordFailuresSinceLastSuccess] [int] NOT NULL CONSTRAINT [DF__webpages___Passw__151102AD] DEFAULT ((0)),
[Password] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PasswordChangedDate] [datetime] NULL,
[PasswordSalt] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PasswordVerificationToken] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PasswordVerificationTokenExpirationDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD CONSTRAINT [PK__webpages__1788CC4CA080788C] PRIMARY KEY CLUSTERED  ([UserId]) ON [PRIMARY]
GO
