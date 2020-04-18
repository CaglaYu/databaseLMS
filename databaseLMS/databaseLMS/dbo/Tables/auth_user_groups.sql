CREATE TABLE [dbo].[auth_user_groups] (
    [id]       INT IDENTITY (1, 1) NOT NULL,
    [user_id]  INT NOT NULL,
    [group_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY ([group_id]) REFERENCES [dbo].[auth_group] ([id]),
    CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id]),
    CONSTRAINT [auth_user_groups_user_id_group_id_94350c0c_uniq] UNIQUE NONCLUSTERED ([user_id] ASC, [group_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [auth_user_groups_user_id_6a12ed8b]
    ON [dbo].[auth_user_groups]([user_id] ASC);


GO
CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544]
    ON [dbo].[auth_user_groups]([group_id] ASC);

