CREATE TABLE [dbo].[django_session] (
    [session_key]  NVARCHAR (40)  NOT NULL,
    [session_data] NVARCHAR (MAX) NOT NULL,
    [expire_date]  DATETIME2 (7)  NOT NULL,
    PRIMARY KEY CLUSTERED ([session_key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663]
    ON [dbo].[django_session]([expire_date] ASC);

