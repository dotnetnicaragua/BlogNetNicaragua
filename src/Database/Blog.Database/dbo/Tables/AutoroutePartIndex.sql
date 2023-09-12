CREATE TABLE [dbo].[AutoroutePartIndex] (
    [Id]                     BIGINT          IDENTITY (1, 1) NOT NULL,
    [DocumentId]             BIGINT          NULL,
    [ContentItemId]          NVARCHAR (26)   NULL,
    [ContainedContentItemId] NVARCHAR (26)   NULL,
    [JsonPath]               NVARCHAR (MAX)  NULL,
    [Path]                   NVARCHAR (1024) NULL,
    [Published]              BIT             NULL,
    [Latest]                 BIT             NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AutoroutePartIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_AutoroutePartIndex]
    ON [dbo].[AutoroutePartIndex]([DocumentId] ASC);

