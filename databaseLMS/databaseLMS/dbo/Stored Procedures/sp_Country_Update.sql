
----------------------------------------------------------------------------
-- Update a single record in Country
----------------------------------------------------------------------------
CREATE PROC sp_Country_Update
	@CountryCode char(3),
	@CountryName varchar(200)
AS

UPDATE	Country
SET	CountryName = @CountryName
WHERE 	CountryCode = @CountryCode

