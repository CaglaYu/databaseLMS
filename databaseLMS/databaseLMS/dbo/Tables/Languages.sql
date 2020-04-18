CREATE TABLE [dbo].[Languages] (
    [LanguageCode] CHAR (3)      NOT NULL,
    [LanguageName] VARCHAR (200) NOT NULL,
    [Active]       BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([LanguageCode] ASC)
);

