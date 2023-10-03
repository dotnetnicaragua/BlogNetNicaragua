CREATE TABLE [dbo].[ContainedPartIndex] (
    [Id]                BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId]        BIGINT         NULL,
    [ContentItemId]     NVARCHAR (26)  NULL,
    [ListContentItemId] NVARCHAR (26)  NULL,
    [DisplayText]       NVARCHAR (255) NULL,
    [Order]             INT            NULL,
    [ListContentType]   NVARCHAR (255) NULL,
    [Published]         BIT            NULL,
    [Latest]            BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ContainedPartIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_ContainedPartIndex]
    ON [dbo].[ContainedPartIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ContainedPartIndex_DocumentId]
    ON [dbo].[ContainedPartIndex]([Id] ASC, [DocumentId] ASC, [ContentItemId] ASC, [ListContentItemId] ASC, [DisplayText] ASC, [Order] ASC, [ListContentType] ASC, [Published] ASC, [Latest] ASC);

