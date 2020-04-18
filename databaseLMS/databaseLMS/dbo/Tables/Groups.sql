CREATE TABLE [dbo].[Groups] (
    [GroupID]      INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate] DATETIME      DEFAULT (getdate()) NOT NULL,
    [GroupName]    VARCHAR (100) NOT NULL,
    [Described]    VARCHAR (200) NULL,
    [UserID]       INT           NOT NULL,
    [EntityID]     INT           NOT NULL,
    [BranchID]     INT           NULL,
    [Active]       BIT           DEFAULT ((1)) NOT NULL,
    [EndDate]      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([GroupID] ASC),
    FOREIGN KEY ([BranchID]) REFERENCES [dbo].[Branch] ([BranchID]),
    FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

