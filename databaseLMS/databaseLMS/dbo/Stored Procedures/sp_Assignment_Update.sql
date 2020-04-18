
----------------------------------------------------------------------------
-- Update a single record in Assignment
----------------------------------------------------------------------------
CREATE PROC sp_Assignment_Update
	@AssignmentID int,
	@CreationDate datetime,
	@UserID int,
	@GroupID int,
	@TrainingID int,
	@AcademyID int = NULL,
	@ProgramID int = NULL,
	@Active bit,
	@StartDate datetime,
	@EndDate datetime = NULL,
	@ParticipationCount smallint,
	@Mandatory bit
AS

UPDATE	Assignment
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	UserID = @UserID,
	GroupID = @GroupID,
	TrainingID = @TrainingID,
	AcademyID = @AcademyID,
	ProgramID = @ProgramID,
	Active = COALESCE(@Active, (1)),
	StartDate = COALESCE(@StartDate, getdate()+(1)),
	EndDate = @EndDate,
	ParticipationCount = COALESCE(@ParticipationCount, (3)),
	Mandatory = COALESCE(@Mandatory, (1))
WHERE 	AssignmentID = @AssignmentID

