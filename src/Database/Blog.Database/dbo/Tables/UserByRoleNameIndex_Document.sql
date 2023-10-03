CREATE TABLE [dbo].[UserByRoleNameIndex_Document] (
    [UserByRoleNameIndexId] BIGINT NOT NULL,
    [DocumentId]            BIGINT NOT NULL,
    CONSTRAINT [FK_UserByRoleNameIndex_Document_DocumentId] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id]),
    CONSTRAINT [FK_UserByRoleNameIndex_Document_Id] FOREIGN KEY ([UserByRoleNameIndexId]) REFERENCES [dbo].[UserByRoleNameIndex] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_UserByRoleNameIndex_Document]
    ON [dbo].[UserByRoleNameIndex_Document]([UserByRoleNameIndexId] ASC, [DocumentId] ASC);

