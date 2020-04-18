CREATE TABLE [dbo].[auth_group] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (80) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    UNIQUE NONCLUSTERED ([name] ASC)
);

