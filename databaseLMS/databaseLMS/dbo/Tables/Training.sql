CREATE TABLE [dbo].[Training] (
    [TrainingID]     INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate]   DATETIME      DEFAULT (getdate()) NOT NULL,
    [TrainingTypeID] TINYINT       NOT NULL,
    [TrainingName]   VARCHAR (150) NOT NULL,
    [Active]         BIT           DEFAULT ((1)) NOT NULL,
    [Described]      VARCHAR (200) NULL,
    [StartDate]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [EndDate]        DATETIME      NULL,
    [AcademyID]      INT           NULL,
    [ProgramID]      INT           NULL,
    [UserID]         INT           NOT NULL,
    [TrainingOrder]  SMALLINT      NULL,
    [InstructorID]   INT           NULL,
    [OnlineStore]    BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([TrainingID] ASC),
    FOREIGN KEY ([AcademyID]) REFERENCES [dbo].[Academy] ([AcademyID]),
    FOREIGN KEY ([InstructorID]) REFERENCES [dbo].[Users] ([UserID]),
    FOREIGN KEY ([ProgramID]) REFERENCES [dbo].[Program] ([ProgramID]),
    FOREIGN KEY ([TrainingTypeID]) REFERENCES [dbo].[TrainingType] ([TrainingTypeID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

