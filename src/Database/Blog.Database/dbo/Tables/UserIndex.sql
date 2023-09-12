CREATE TABLE [dbo].[UserIndex] (
    [Id]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]         BIGINT         NULL,
    [NormalizedUserName] NVARCHAR (255) NULL,
    [NormalizedEmail]    NVARCHAR (255) NULL,
    [IsEnabled]          BIT            DEFAULT ((1)) NOT NULL,
    [IsLockoutEnabled]   BIT            DEFAULT ((0)) NOT NULL,
    [LockoutEndUtc]      DATETIME       NULL,
    [AccessFailedCount]  INT            DEFAULT ((0)) NOT NULL,
    [UserId]             NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_UserIndex]
    ON [dbo].[UserIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_UserIndex_DocumentId]
    ON [dbo].[UserIndex]([DocumentId] ASC, [UserId] ASC, [NormalizedUserName] ASC, [NormalizedEmail] ASC, [IsEnabled] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_UserIndex_Lockout]
    ON [dbo].[UserIndex]([DocumentId] ASC, [IsLockoutEnabled] ASC, [LockoutEndUtc] ASC, [AccessFailedCount] ASC);

