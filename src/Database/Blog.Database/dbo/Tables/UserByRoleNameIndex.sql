CREATE TABLE [dbo].[UserByRoleNameIndex] (
    [Id]       BIGINT         IDENTITY (1, 1) NOT NULL,
    [RoleName] NVARCHAR (255) NULL,
    [Count]    INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IDX_UserByRoleNameIndex_RoleName]
    ON [dbo].[UserByRoleNameIndex]([RoleName] ASC);

