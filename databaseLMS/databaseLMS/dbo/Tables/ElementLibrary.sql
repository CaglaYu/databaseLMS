CREATE TABLE [dbo].[ElementLibrary] (
    [ElementID]     INT           IDENTITY (1, 1) NOT NULL,
    [ElementTypeID] TINYINT       NOT NULL,
    [ElementName]   VARCHAR (100) NOT NULL,
    [Described]     VARCHAR (200) NULL,
    [QuizIntro]     VARCHAR (300) NULL,
    [Video]         VARCHAR (200) NULL,
    [Picture]       VARCHAR (200) NULL,
    [PDF]           VARCHAR (200) NULL,
    [JunctionText]  VARCHAR (300) NULL,
    [Answer1]       VARCHAR (150) NULL,
    [Answer2]       VARCHAR (150) NULL,
    [Mainstream]    BIT           NULL,
    PRIMARY KEY CLUSTERED ([ElementID] ASC),
    FOREIGN KEY ([ElementTypeID]) REFERENCES [dbo].[ElementType] ([ElementTypeID])
);

