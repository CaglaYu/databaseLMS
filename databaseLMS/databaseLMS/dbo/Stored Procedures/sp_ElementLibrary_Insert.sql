
----------------------------------------------------------------------------
-- Insert a single record into ElementLibrary
----------------------------------------------------------------------------
CREATE PROC sp_ElementLibrary_Insert
	@ElementTypeID tinyint,
	@ElementName varchar(100),
	@Described varchar(200) = NULL,
	@QuizIntro varchar(300) = NULL,
	@Video varchar(200) = NULL,
	@Picture varchar(200) = NULL,
	@PDF varchar(200) = NULL,
	@JunctionText varchar(300) = NULL,
	@Answer1 varchar(150) = NULL,
	@Answer2 varchar(150) = NULL,
	@Mainstream bit = NULL
AS

INSERT ElementLibrary(ElementTypeID, ElementName, Described, QuizIntro, Video, Picture, PDF, JunctionText, Answer1, Answer2, Mainstream)
VALUES (@ElementTypeID, @ElementName, @Described, @QuizIntro, @Video, @Picture, @PDF, @JunctionText, @Answer1, @Answer2, @Mainstream)

RETURN SCOPE_IDENTITY()

