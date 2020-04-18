CREATE TABLE [dbo].[django_content_type] (
    [id]        INT            IDENTITY (1, 1) NOT NULL,
    [app_label] NVARCHAR (100) NOT NULL,
    [model]     NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [django_content_type_app_label_model_76bd3d3b_uniq] UNIQUE NONCLUSTERED ([app_label] ASC, [model] ASC)
);

