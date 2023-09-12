CREATE TABLE [dbo].[Document] (
    [Id]      BIGINT         NOT NULL,
    [Type]    NVARCHAR (255) NOT NULL,
    [Content] NVARCHAR (MAX) NULL,
    [Version] BIGINT         DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Document_Type]
    ON [dbo].[Document]([Type] ASC);

