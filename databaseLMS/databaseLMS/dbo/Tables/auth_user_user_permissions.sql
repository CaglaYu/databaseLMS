CREATE TABLE [dbo].[auth_user_user_permissions] (
    [id]            INT IDENTITY (1, 1) NOT NULL,
    [user_id]       INT NOT NULL,
    [permission_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id] FOREIGN KEY ([permission_id]) REFERENCES [dbo].[auth_permission] ([id]),
    CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id]),
    CONSTRAINT [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq] UNIQUE NONCLUSTERED ([user_id] ASC, [permission_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_a95ead1b]
    ON [dbo].[auth_user_user_permissions]([user_id] ASC);


GO
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_permission_id_1fbb5f2c]
    ON [dbo].[auth_user_user_permissions]([permission_id] ASC);

