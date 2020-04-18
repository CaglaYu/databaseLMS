
----------------------------------------------------------------------------
-- Delete a single record from Languages
----------------------------------------------------------------------------
CREATE PROC sp_Languages_Delete
	@LanguageCode char(3)
AS

DELETE	Languages
WHERE 	LanguageCode = @LanguageCode

