CREATE TABLE [dbo].[Academy] (
    [AcademyID]    INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate] DATETIME      DEFAULT (getdate()) NOT NULL,
    [AcademyName]  VARCHAR (100) NOT NULL,
    [Active]       BIT           DEFAULT ((1)) NOT NULL,
    [Described]    VARCHAR (200) NULL,
    [StartDate]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [EndDate]      DATETIME      NULL,
    [EntityID]     INT           NOT NULL,
    [UserID]       INT           NOT NULL,
    [BranchID]     INT           NULL,
    [OnlineStore]  BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([AcademyID] ASC),
    FOREIGN KEY ([BranchID]) REFERENCES [dbo].[Branch] ([BranchID]),
    FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

