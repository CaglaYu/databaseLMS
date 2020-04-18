CREATE TABLE [dbo].[UserGroup] (
    [GroupID] INT NOT NULL,
    [UserID]  INT NOT NULL,
    [Active]  BIT DEFAULT ((1)) NOT NULL,
    FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Groups] ([GroupID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

