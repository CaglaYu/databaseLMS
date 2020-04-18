
----------------------------------------------------------------------------
-- Insert a single record into Sector
----------------------------------------------------------------------------
CREATE PROC sp_Sector_Insert
	@SectorID smallint,
	@SectorName varchar(100)
AS

INSERT Sector(SectorID, SectorName)
VALUES (@SectorID, @SectorName)

