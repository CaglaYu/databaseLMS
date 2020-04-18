
----------------------------------------------------------------------------
-- Select a single record from Entity
----------------------------------------------------------------------------
CREATE PROC sp_Entity_Select
	@EntityID int
AS

SELECT	EntityID,
	CreationDate,
	EntityName,
	EntityTypeID,
	Active,
	SectorID,
	UserID,
	OnlineStore,
	EntityLogo,
	EntitySiteColor,
	HomePageAnnouncement
FROM	Entity
WHERE 	EntityID = @EntityID

