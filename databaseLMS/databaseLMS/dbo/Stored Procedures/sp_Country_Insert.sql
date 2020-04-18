
----------------------------------------------------------------------------
-- Insert a single record into Country
----------------------------------------------------------------------------
CREATE PROC sp_Country_Insert
	@CountryCode char(3),
	@CountryName varchar(200)
AS

INSERT Country(CountryCode, CountryName)
VALUES (@CountryCode, @CountryName)

