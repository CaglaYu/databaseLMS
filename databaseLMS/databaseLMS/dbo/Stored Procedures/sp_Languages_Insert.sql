
----------------------------------------------------------------------------
-- Insert a single record into Languages
----------------------------------------------------------------------------
CREATE PROC sp_Languages_Insert
	@LanguageCode char(3),
	@LanguageName varchar(200),
	@Active bit = NULL
AS

INSERT Languages(LanguageCode, LanguageName, Active)
VALUES (@LanguageCode, @LanguageName, COALESCE(@Active, (0)))

