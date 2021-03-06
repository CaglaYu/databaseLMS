﻿CREATE TABLE [dbo].[Users] (
    [UserID]           INT           IDENTITY (1, 1) NOT NULL,
    [CreationDate]     DATETIME      DEFAULT (getdate()) NOT NULL,
    [UserName]         VARCHAR (100) NOT NULL,
    [Email]            VARCHAR (100) NOT NULL,
    [UserPassword]     BINARY (64)   NOT NULL,
    [Active]           BIT           DEFAULT ((1)) NOT NULL,
    [CountryCode]      CHAR (3)      NOT NULL,
    [City]             VARCHAR (50)  NULL,
    [LanguageCode]     CHAR (3)      NOT NULL,
    [MembershipTypeID] TINYINT       NULL,
    [EntityID]         INT           NULL,
    [BranchID]         INT           NULL,
    [Department]       VARCHAR (100) NULL,
    [JobTitle]         VARCHAR (100) NULL,
    [EmployeeID]       VARCHAR (100) NULL,
    [UserTypeID]       TINYINT       NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    FOREIGN KEY ([BranchID]) REFERENCES [dbo].[Branch] ([BranchID]),
    FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([CountryCode]),
    FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]),
    FOREIGN KEY ([LanguageCode]) REFERENCES [dbo].[Languages] ([LanguageCode]),
    FOREIGN KEY ([MembershipTypeID]) REFERENCES [dbo].[MembershipType] ([MembershipTypeID]),
    FOREIGN KEY ([UserTypeID]) REFERENCES [dbo].[UserType] ([UserTypeID])
);

