CREATE TABLE [dbo].[Entity] (
    [EntityID]             INT            IDENTITY (1, 1) NOT NULL,
    [CreationDate]         DATETIME       DEFAULT (getdate()) NOT NULL,
    [EntityName]           VARCHAR (100)  NOT NULL,
    [EntityTypeID]         TINYINT        NULL,
    [Active]               BIT            DEFAULT ((1)) NOT NULL,
    [SectorID]             SMALLINT       NULL,
    [UserID]               INT            NOT NULL,
    [OnlineStore]          BIT            DEFAULT ((0)) NOT NULL,
    [EntityLogo]           VARCHAR (200)  NOT NULL,
    [EntitySiteColor]      CHAR (6)       DEFAULT ('FFCC00') NOT NULL,
    [HomePageAnnouncement] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([EntityID] ASC),
    FOREIGN KEY ([EntityTypeID]) REFERENCES [dbo].[EntityType] ([EntityTypeID]),
    FOREIGN KEY ([SectorID]) REFERENCES [dbo].[Sector] ([SectorID]),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

