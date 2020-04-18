
----------------------------------------------------------------------------
-- Select a single record from Languages
----------------------------------------------------------------------------
CREATE PROC sp_Languages_Select
	@LanguageCode char(3)
AS

SELECT	LanguageCode,
	LanguageName,
	Active
FROM	Languages
WHERE 	LanguageCode = @LanguageCode

