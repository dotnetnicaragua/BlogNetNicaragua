CREATE TABLE [dbo].[IndexingTask] (
    [Id]            BIGINT        IDENTITY (1, 1) NOT NULL,
    [ContentItemId] NVARCHAR (26) NULL,
    [CreatedUtc]    DATETIME      NOT NULL,
    [Type]          INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IDX_IndexingTask_ContentItemId]
    ON [dbo].[IndexingTask]([ContentItemId] ASC);

