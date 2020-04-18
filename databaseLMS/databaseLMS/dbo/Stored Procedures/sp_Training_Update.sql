
----------------------------------------------------------------------------
-- Update a single record in Training
----------------------------------------------------------------------------
CREATE PROC sp_Training_Update
	@TrainingID int,
	@CreationDate datetime,
	@TrainingTypeID tinyint,
	@TrainingName varchar(150),
	@Active bit,
	@Described varchar(200) = NULL,
	@StartDate datetime,
	@EndDate datetime = NULL,
	@AcademyID int = NULL,
	@ProgramID int = NULL,
	@UserID int,
	@TrainingOrder smallint = NULL,
	@InstructorID int = NULL,
	@OnlineStore bit
AS

UPDATE	Training
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	TrainingTypeID = @TrainingTypeID,
	TrainingName = @TrainingName,
	Active = COALESCE(@Active, (1)),
	Described = @Described,
	StartDate = COALESCE(@StartDate, getdate()),
	EndDate = @EndDate,
	AcademyID = @AcademyID,
	ProgramID = @ProgramID,
	UserID = @UserID,
	TrainingOrder = @TrainingOrder,
	InstructorID = @InstructorID,
	OnlineStore = COALESCE(@OnlineStore, (0))
WHERE 	TrainingID = @TrainingID

