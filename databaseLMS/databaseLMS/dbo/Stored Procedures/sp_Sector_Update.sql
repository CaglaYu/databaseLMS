
----------------------------------------------------------------------------
-- Update a single record in Sector
----------------------------------------------------------------------------
CREATE PROC sp_Sector_Update
	@SectorID smallint,
	@SectorName varchar(100)
AS

UPDATE	Sector
SET	SectorName = @SectorName
WHERE 	SectorID = @SectorID

