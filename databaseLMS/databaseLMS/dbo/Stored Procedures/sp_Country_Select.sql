
----------------------------------------------------------------------------
-- Select a single record from Country
----------------------------------------------------------------------------
CREATE PROC sp_Country_Select
	@CountryCode char(3)
AS

SELECT	CountryCode,
	CountryName
FROM	Country
WHERE 	CountryCode = @CountryCode

