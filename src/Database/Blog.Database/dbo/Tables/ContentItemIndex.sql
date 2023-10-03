CREATE TABLE [dbo].[ContentItemIndex] (
    [Id]                   BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]           BIGINT         NULL,
    [ContentItemId]        NVARCHAR (26)  NULL,
    [ContentItemVersionId] NVARCHAR (26)  NULL,
    [Latest]               BIT            NULL,
    [Published]            BIT            NULL,
    [ContentType]          NVARCHAR (255) NULL,
    [ModifiedUtc]          DATETIME       NULL,
    [PublishedUtc]         DATETIME       NULL,
    [CreatedUtc]           DATETIME       NULL,
    [Owner]                NVARCHAR (255) NULL,
    [Author]               NVARCHAR (255) NULL,
    [DisplayText]          NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContentItemIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_ContentItemIndex]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContentItemIndex_DocumentId]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC, [ContentItemId] ASC, [ContentItemVersionId] ASC, [Published] ASC, [Latest] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContentItemIndex_DocumentId_ContentType]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC, [ContentType] ASC, [CreatedUtc] ASC, [ModifiedUtc] ASC, [PublishedUtc] ASC, [Published] ASC, [Latest] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContentItemIndex_DocumentId_Owner]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC, [Owner] ASC, [Published] ASC, [Latest] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContentItemIndex_DocumentId_Author]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC, [Author] ASC, [Published] ASC, [Latest] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContentItemIndex_DocumentId_DisplayText]
    ON [dbo].[ContentItemIndex]([DocumentId] ASC, [DisplayText] ASC, [Published] ASC, [Latest] ASC);

