
----------------------------------------------------------------------------
-- Delete a single record from Country
----------------------------------------------------------------------------
CREATE PROC sp_Country_Delete
	@CountryCode char(3)
AS

DELETE	Country
WHERE 	CountryCode = @CountryCode

