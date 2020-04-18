CREATE TABLE [dbo].[LiveSessionExercise] (
    [ExerciseID]    INT           IDENTITY (1, 1) NOT NULL,
    [TrainingID]    INT           NOT NULL,
    [Exercise]      VARCHAR (200) NOT NULL,
    [Described]     VARCHAR (200) NULL,
    [ElementID]     INT           NULL,
    [ExerciseOrder] SMALLINT      NULL,
    PRIMARY KEY CLUSTERED ([ExerciseID] ASC),
    FOREIGN KEY ([ElementID]) REFERENCES [dbo].[ElementLibrary] ([ElementID]),
    FOREIGN KEY ([TrainingID]) REFERENCES [dbo].[Training] ([TrainingID])
);

