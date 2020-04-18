CREATE TABLE [dbo].[ContainerType] (
    [ContainerTypeID]   TINYINT      IDENTITY (1, 1) NOT NULL,
    [ContainerTypeName] VARCHAR (40) NOT NULL,
    PRIMARY KEY CLUSTERED ([ContainerTypeID] ASC)
);

