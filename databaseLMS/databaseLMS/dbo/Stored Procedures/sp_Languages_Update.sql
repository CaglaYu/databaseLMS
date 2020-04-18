
----------------------------------------------------------------------------
-- Update a single record in Languages
----------------------------------------------------------------------------
CREATE PROC sp_Languages_Update
	@LanguageCode char(3),
	@LanguageName varchar(200),
	@Active bit
AS

UPDATE	Languages
SET	LanguageName = @LanguageName,
	Active = COALESCE(@Active, (0))
WHERE 	LanguageCode = @LanguageCode

