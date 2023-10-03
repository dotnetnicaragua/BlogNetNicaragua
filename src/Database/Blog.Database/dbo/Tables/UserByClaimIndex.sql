CREATE TABLE [dbo].[UserByClaimIndex] (
    [Id]         BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId] BIGINT         NULL,
    [ClaimType]  NVARCHAR (255) NULL,
    [ClaimValue] NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UserByClaimIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_UserByClaimIndex]
    ON [dbo].[UserByClaimIndex]([DocumentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_UserByClaimIndex_DocumentId]
    ON [dbo].[UserByClaimIndex]([DocumentId] ASC, [ClaimType] ASC, [ClaimValue] ASC);

