CREATE TABLE [dbo].[django_admin_log] (
    [id]              INT            IDENTITY (1, 1) NOT NULL,
    [action_time]     DATETIME2 (7)  NOT NULL,
    [object_id]       NVARCHAR (MAX) NULL,
    [object_repr]     NVARCHAR (200) NOT NULL,
    [action_flag]     SMALLINT       NOT NULL,
    [change_message]  NVARCHAR (MAX) NOT NULL,
    [content_type_id] INT            NULL,
    [user_id]         INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK ([action_flag]>=(0)),
    CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY ([content_type_id]) REFERENCES [dbo].[django_content_type] ([id]),
    CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[auth_user] ([id])
);


GO
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb]
    ON [dbo].[django_admin_log]([content_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6]
    ON [dbo].[django_admin_log]([user_id] ASC);

