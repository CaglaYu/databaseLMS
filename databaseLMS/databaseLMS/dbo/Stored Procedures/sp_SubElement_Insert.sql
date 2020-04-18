
----------------------------------------------------------------------------
-- Insert a single record into SubElement
----------------------------------------------------------------------------
CREATE PROC sp_SubElement_Insert
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

INSERT SubElement(ElementID, SubOrder, QuizQuestion, Answer1, Answer2, Answer3, Answer4, RightAnswer, SlideName, SlideLink)
VALUES (@ElementID, @SubOrder, @QuizQuestion, @Answer1, @Answer2, @Answer3, @Answer4, @RightAnswer, @SlideName, @SlideLink)

RETURN SCOPE_IDENTITY()

