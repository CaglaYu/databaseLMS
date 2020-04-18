
----------------------------------------------------------------------------
-- Delete a single record from Sector
----------------------------------------------------------------------------
CREATE PROC sp_Sector_Delete
	@SectorID smallint
AS

DELETE	Sector
WHERE 	SectorID = @SectorID

