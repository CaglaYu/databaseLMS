CREATE TABLE [dbo].[Assignment] (
    [AssignmentID]       INT      IDENTITY (1, 1) NOT NULL,
    [CreationDate]       DATETIME DEFAULT (getdate()) NOT NULL,
    [UserID]             INT      NOT NULL,
    [GroupID]            INT      NOT NULL,
    [TrainingID]         INT      NOT NULL,
    [AcademyID]          INT      NULL,
    [ProgramID]          INT      NULL,
    [Active]             BIT      DEFAULT ((1)) NOT NULL,
    [StartDate]          DATETIME DEFAULT (getdate()+(1)) NOT NULL,
    [EndDate]            DATETIME NULL,
    [ParticipationCount] SMALLINT DEFAULT ((3)) NOT NULL,
    [Mandatory]          BIT      DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([AssignmentID] ASC),
    FOREIGN KEY ([AcademyID]) REFERENCES [dbo].[Academy] ([AcademyID]),
    FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Groups] ([GroupID]),
    FOREIGN KEY ([ProgramID]) REFERENCES [dbo].[Program] ([ProgramID]),
    FOREIGN KEY ([TrainingID]) REFERENCES [dbo].[Training] ([TrainingID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

