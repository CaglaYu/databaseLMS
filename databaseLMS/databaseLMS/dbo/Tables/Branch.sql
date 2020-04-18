CREATE TABLE [dbo].[Branch] (
    [BranchID]        INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [BranchName]      VARCHAR (100) NOT NULL,
    [Active]          BIT           DEFAULT ((1)) NULL,
    [EntityID]        INT           NOT NULL,
    [UserID]          INT           NOT NULL,
    [BranchLogoON]    BIT           DEFAULT ((0)) NOT NULL,
    [BranchLogo]      VARCHAR (200) NOT NULL,
    [KeepEntityLogo]  BIT           DEFAULT ((1)) NOT NULL,
    [BranchSiteColor] CHAR (6)      DEFAULT ('FFCC00') NOT NULL,
    PRIMARY KEY CLUSTERED ([BranchID] ASC),
    FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

