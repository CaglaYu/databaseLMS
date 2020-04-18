
----------------------------------------------------------------------------
-- Update a single record in Entity
----------------------------------------------------------------------------
CREATE PROC sp_Entity_Update
	@EntityID int,
	@CreationDate datetime,
	@EntityName varchar(100),
	@EntityTypeID tinyint = NULL,
	@Active bit,
	@SectorID smallint = NULL,
	@UserID int,
	@OnlineStore bit,
	@EntityLogo varchar(200),
	@EntitySiteColor char(6),
	@HomePageAnnouncement nvarchar(max) = NULL
AS

UPDATE	Entity
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	EntityName = @EntityName,
	EntityTypeID = @EntityTypeID,
	Active = COALESCE(@Active, (1)),
	SectorID = @SectorID,
	UserID = @UserID,
	OnlineStore = COALESCE(@OnlineStore, (0)),
	EntityLogo = @EntityLogo,
	EntitySiteColor = COALESCE(@EntitySiteColor, 'FFCC00'),
	HomePageAnnouncement = @HomePageAnnouncement
WHERE 	EntityID = @EntityID

