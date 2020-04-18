CREATE TABLE [dbo].[ContainerElements] (
    [ContainerID] INT NOT NULL,
    [ElementID]   INT NOT NULL,
    FOREIGN KEY ([ContainerID]) REFERENCES [dbo].[Container] ([ContainerID]),
    FOREIGN KEY ([ElementID]) REFERENCES [dbo].[ElementLibrary] ([ElementID])
);

