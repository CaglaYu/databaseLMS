CREATE TABLE [dbo].[django_migrations] (
    [id]      INT            IDENTITY (1, 1) NOT NULL,
    [app]     NVARCHAR (255) NOT NULL,
    [name]    NVARCHAR (255) NOT NULL,
    [applied] DATETIME2 (7)  NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

