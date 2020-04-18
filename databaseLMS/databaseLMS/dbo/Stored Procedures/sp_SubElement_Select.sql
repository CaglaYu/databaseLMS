
----------------------------------------------------------------------------
-- Select a single record from SubElement
----------------------------------------------------------------------------
CREATE PROC sp_SubElement_Select
	@SubID int
AS

SELECT	SubID,
	ElementID,
	SubOrder,
	QuizQuestion,
	Answer1,
	Answer2,
	Answer3,
	Answer4,
	RightAnswer,
	SlideName,
	SlideLink
FROM	SubElement
WHERE 	SubID = @SubID

