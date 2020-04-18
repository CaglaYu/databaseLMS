CREATE TABLE [dbo].[Country] (
    [CountryCode] CHAR (3)      NOT NULL,
    [CountryName] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([CountryCode] ASC)
);

