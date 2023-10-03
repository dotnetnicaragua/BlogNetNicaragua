CREATE TABLE [dbo].[DeploymentPlanIndex] (
    [Id]         BIGINT         IDENTITY (1, 1) NOT NULL,
    [DocumentId] BIGINT         NULL,
    [Name]       NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DeploymentPlanIndex] FOREIGN KEY ([DocumentId]) REFERENCES [dbo].[Document] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IDX_FK_DeploymentPlanIndex]
    ON [dbo].[DeploymentPlanIndex]([DocumentId] ASC);

