CREATE TABLE [dbo].[auth_user] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [password]     NVARCHAR (128) NOT NULL,
    [last_login]   DATETIME2 (7)  NULL,
    [is_superuser] BIT            NOT NULL,
    [username]     NVARCHAR (150) NOT NULL,
    [first_name]   NVARCHAR (30)  NOT NULL,
    [last_name]    NVARCHAR (150) NOT NULL,
    [email]        NVARCHAR (254) NOT NULL,
    [is_staff]     BIT            NOT NULL,
    [is_active]    BIT            NOT NULL,
    [date_joined]  DATETIME2 (7)  NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED ([username] ASC)
);

