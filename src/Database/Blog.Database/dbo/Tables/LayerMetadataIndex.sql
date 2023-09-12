CREATE TABLE [dbo].[LayerMetadataIndex] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [DocumentId] BIGINT        NULL,
    [Zone]       NVARCHAR (64) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LayerMetadataIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_LayerMetadataIndex]
    ON [dbo].[LayerMetadataIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_LayerMetadataIndex_DocumentId]
    ON [dbo].[LayerMetadataIndex]([DocumentId] ASC, [Zone] ASC);

