CREATE TABLE [dbo].[MembershipType] (
    [MembershipTypeID]   TINYINT      IDENTITY (1, 1) NOT NULL,
    [MembershipTypeName] VARCHAR (40) NOT NULL,
    PRIMARY KEY CLUSTERED ([MembershipTypeID] ASC)
);

