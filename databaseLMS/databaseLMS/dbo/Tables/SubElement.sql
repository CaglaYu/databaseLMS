CREATE TABLE [dbo].[SubElement] (
    [SubID]        INT           IDENTITY (1, 1) NOT NULL,
    [ElementID]    INT           NOT NULL,
    [SubOrder]     SMALLINT      NOT NULL,
    [QuizQuestion] VARCHAR (300) NOT NULL,
    [Answer1]      VARCHAR (150) NOT NULL,
    [Answer2]      VARCHAR (150) NOT NULL,
    [Answer3]      VARCHAR (150) NULL,
    [Answer4]      VARCHAR (150) NULL,
    [RightAnswer]  TINYINT       NOT NULL,
    [SlideName]    VARCHAR (150) NULL,
    [SlideLink]    VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([SubID] ASC),
    FOREIGN KEY ([ElementID]) REFERENCES [dbo].[ElementLibrary] ([ElementID])
);

