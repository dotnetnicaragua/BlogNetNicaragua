CREATE TABLE [dbo].[UserByLoginInfoIndex] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]    BIGINT         NULL,
    [LoginProvider] NVARCHAR (255) NULL,
    [ProviderKey]   NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserByLoginInfoIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_UserByLoginInfoIndex]
    ON [dbo].[UserByLoginInfoIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_UserByLoginInfoIndex_DocumentId]
    ON [dbo].[UserByLoginInfoIndex]([DocumentId] ASC, [LoginProvider] ASC, [ProviderKey] ASC);

