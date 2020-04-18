
----------------------------------------------------------------------------
-- Update a single record in SubElement
----------------------------------------------------------------------------
CREATE PROC sp_SubElement_Update
	@SubID int,
	@ElementID int,
	@SubOrder smallint,
	@QuizQuestion varchar(300),
	@Answer1 varchar(150),
	@Answer2 varchar(150),
	@Answer3 varchar(150) = NULL,
	@Answer4 varchar(150) = NULL,
	@RightAnswer tinyint,
	@SlideName varchar(150) = NULL,
	@SlideLink varchar(150) = NULL
AS

UPDATE	SubElement
SET	ElementID = @ElementID,
	SubOrder = @SubOrder,
	QuizQuestion = @QuizQuestion,
	Answer1 = @Answer1,
	Answer2 = @Answer2,
	Answer3 = @Answer3,
	Answer4 = @Answer4,
	RightAnswer = @RightAnswer,
	SlideName = @SlideName,
	SlideLink = @SlideLink
WHERE 	SubID = @SubID

