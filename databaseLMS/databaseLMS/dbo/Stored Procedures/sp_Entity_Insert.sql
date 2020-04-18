
----------------------------------------------------------------------------
-- Insert a single record into Entity
----------------------------------------------------------------------------
CREATE PROC sp_Entity_Insert
	@CreationDate datetime = NULL,
	@EntityName varchar(100),
	@EntityTypeID tinyint = NULL,
	@Active bit = NULL,
	@SectorID smallint = NULL,
	@UserID int,
	@OnlineStore bit = NULL,
	@EntityLogo varchar(200),
	@EntitySiteColor char(6) = NULL,
	@HomePageAnnouncement nvarchar(max) = NULL
AS

INSERT Entity(CreationDate, EntityName, EntityTypeID, Active, SectorID, UserID, OnlineStore, EntityLogo, EntitySiteColor, HomePageAnnouncement)
VALUES (COALESCE(@CreationDate, getdate()), @EntityName, @EntityTypeID, COALESCE(@Active, (1)), @SectorID, @UserID, COALESCE(@OnlineStore, (0)), @EntityLogo, COALESCE(@EntitySiteColor, 'FFCC00'), @HomePageAnnouncement)

RETURN SCOPE_IDENTITY()

