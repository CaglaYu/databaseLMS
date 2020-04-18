CREATE TABLE [dbo].[Container] (
    [ContainerID]       INT      IDENTITY (1, 1) NOT NULL,
    [TrainingID]        INT      NOT NULL,
    [ContainerOrder]    SMALLINT NOT NULL,
    [ContainerTypeID]   TINYINT  DEFAULT ((1)) NOT NULL,
    [ContainerLayoutID] TINYINT  DEFAULT ((1)) NOT NULL,
    [IsHidden]          BIT      DEFAULT ((0)) NOT NULL,
    [BackgroundColor]   CHAR (6) DEFAULT ('000000') NOT NULL,
    [Transparency]      TINYINT  DEFAULT ((0)) NOT NULL,
    [KeepLast]          BIT      DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ContainerID] ASC),
    FOREIGN KEY ([ContainerLayoutID]) REFERENCES [dbo].[ContainerLayout] ([ContainerLayoutID]),
    FOREIGN KEY ([ContainerTypeID]) REFERENCES [dbo].[ContainerType] ([ContainerTypeID]),
    FOREIGN KEY ([TrainingID]) REFERENCES [dbo].[Training] ([TrainingID])
);

