CREATE TABLE [dbo].[AliasPartIndex] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]    BIGINT         NULL,
    [Alias]         NVARCHAR (740) NULL,
    [ContentItemId] NVARCHAR (26)  NULL,
    [Latest]        BIT            DEFAULT ((0)) NULL,
    [Published]     BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AliasPartIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_AliasPartIndex]
    ON [dbo].[AliasPartIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_AliasPartIndex_DocumentId]
    ON [dbo].[AliasPartIndex]([DocumentId] ASC, [Alias] ASC, [ContentItemId] ASC, [Published] ASC, [Latest] ASC);

