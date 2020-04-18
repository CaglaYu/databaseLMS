CREATE TABLE [dbo].[UserType] (
    [UserTypeID]   TINYINT      IDENTITY (1, 1) NOT NULL,
    [UserTypeName] VARCHAR (40) NOT NULL,
    PRIMARY KEY CLUSTERED ([UserTypeID] ASC)
);

