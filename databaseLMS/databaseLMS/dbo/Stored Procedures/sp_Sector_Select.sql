
----------------------------------------------------------------------------
-- Select a single record from Sector
----------------------------------------------------------------------------
CREATE PROC sp_Sector_Select
	@SectorID smallint
AS

SELECT	SectorID,
	SectorName
FROM	Sector
WHERE 	SectorID = @SectorID

