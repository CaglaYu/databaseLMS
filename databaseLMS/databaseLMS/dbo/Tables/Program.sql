CREATE TABLE [dbo].[Program] (
    [ProgramID]    INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate] DATETIME      DEFAULT (getdate()) NOT NULL,
    [ProgramName]  VARCHAR (100) NOT NULL,
    [Active]       BIT           DEFAULT ((1)) NOT NULL,
    [Described]    VARCHAR (200) NULL,
    [StartDate]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [EndDate]      DATETIME      NULL,
    [AcademyID]    INT           NULL,
    [EntityID]     INT           NOT NULL,
    [UserID]       INT           NOT NULL,
    [BranchID]     INT           NULL,
    [OnlineStore]  BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ProgramID] ASC),
    FOREIGN KEY ([AcademyID]) REFERENCES [dbo].[Academy] ([AcademyID]),
    FOREIGN KEY ([BranchID]) REFERENCES [dbo].[Branch] ([BranchID]),
    FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

