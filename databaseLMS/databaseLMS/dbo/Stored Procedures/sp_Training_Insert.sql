
----------------------------------------------------------------------------
-- Insert a single record into Training
----------------------------------------------------------------------------
CREATE PROC sp_Training_Insert
	@CreationDate datetime = NULL,
	@TrainingTypeID tinyint,
	@TrainingName varchar(150),
	@Active bit = NULL,
	@Described varchar(200) = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@AcademyID int = NULL,
	@ProgramID int = NULL,
	@UserID int,
	@TrainingOrder smallint = NULL,
	@InstructorID int = NULL,
	@OnlineStore bit = NULL
AS

INSERT Training(CreationDate, TrainingTypeID, TrainingName, Active, Described, StartDate, EndDate, AcademyID, ProgramID, UserID, TrainingOrder, InstructorID, OnlineStore)
VALUES (COALESCE(@CreationDate, getdate()), @TrainingTypeID, @TrainingName, COALESCE(@Active, (1)), @Described, COALESCE(@StartDate, getdate()), @EndDate, @AcademyID, @ProgramID, @UserID, @TrainingOrder, @InstructorID, COALESCE(@OnlineStore, (0)))

RETURN SCOPE_IDENTITY()

