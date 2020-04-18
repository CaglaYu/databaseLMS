
----------------------------------------------------------------------------
-- Select a single record from ElementLibrary
----------------------------------------------------------------------------
CREATE PROC sp_ElementLibrary_Select
	@ElementID int
AS

SELECT	ElementID,
	ElementTypeID,
	ElementName,
	Described,
	QuizIntro,
	Video,
	Picture,
	PDF,
	JunctionText,
	Answer1,
	Answer2,
	Mainstream
FROM	ElementLibrary
WHERE 	ElementID = @ElementID

