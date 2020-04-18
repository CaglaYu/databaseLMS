CREATE TABLE [dbo].[BreakOutSession] (
    [BOID]       INT           IDENTITY (1, 1) NOT NULL,
    [ExerciseID] INT           NOT NULL,
    [BOName]     VARCHAR (200) NOT NULL,
    [Described]  VARCHAR (200) NULL,
    [ElementID]  INT           NULL,
    [BOOrder]    SMALLINT      NULL,
    PRIMARY KEY CLUSTERED ([BOID] ASC),
    FOREIGN KEY ([ElementID]) REFERENCES [dbo].[ElementLibrary] ([ElementID]),
    FOREIGN KEY ([ExerciseID]) REFERENCES [dbo].[LiveSessionExercise] ([ExerciseID])
);

