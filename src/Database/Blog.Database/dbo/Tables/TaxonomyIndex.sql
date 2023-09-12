CREATE TABLE [dbo].[TaxonomyIndex] (
    [Id]                    BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]            BIGINT         NULL,
    [TaxonomyContentItemId] NVARCHAR (26)  NULL,
    [ContentItemId]         NVARCHAR (26)  NULL,
    [ContentType]           NVARCHAR (255) NULL,
    [ContentPart]           NVARCHAR (255) NULL,
    [ContentField]          NVARCHAR (255) NULL,
    [TermContentItemId]     NVARCHAR (26)  NULL,
    [Published]             BIT            DEFAULT ((1)) NULL,
    [Latest]                BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TaxonomyIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_TaxonomyIndex]
    ON [dbo].[TaxonomyIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_TaxonomyIndex_DocumentId]
    ON [dbo].[TaxonomyIndex]([DocumentId] ASC, [TaxonomyContentItemId] ASC, [ContentItemId] ASC, [TermContentItemId] ASC, [Published] ASC, [Latest] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_TaxonomyIndex_DocumentId_ContentType]
    ON [dbo].[TaxonomyIndex]([DocumentId] ASC, [ContentType] ASC, [ContentPart] ASC, [ContentField] ASC, [Published] ASC, [Latest] ASC);

