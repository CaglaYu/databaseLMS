
----------------------------------------------------------------------------
-- Update a single record in ElementLibrary
----------------------------------------------------------------------------
CREATE PROC sp_ElementLibrary_Update
	@ElementID int,
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

UPDATE	ElementLibrary
SET	ElementTypeID = @ElementTypeID,
	ElementName = @ElementName,
	Described = @Described,
	QuizIntro = @QuizIntro,
	Video = @Video,
	Picture = @Picture,
	PDF = @PDF,
	JunctionText = @JunctionText,
	Answer1 = @Answer1,
	Answer2 = @Answer2,
	Mainstream = @Mainstream
WHERE 	ElementID = @ElementID

