
----------------------------------------------------------------------------
-- Insert a single record into Assignment
----------------------------------------------------------------------------
CREATE PROC sp_Assignment_Insert
	@CreationDate datetime = NULL,
	@UserID int,
	@GroupID int,
	@TrainingID int,
	@AcademyID int = NULL,
	@ProgramID int = NULL,
	@Active bit = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@ParticipationCount smallint = NULL,
	@Mandatory bit = NULL
AS

INSERT Assignment(CreationDate, UserID, GroupID, TrainingID, AcademyID, ProgramID, Active, StartDate, EndDate, ParticipationCount, Mandatory)
VALUES (COALESCE(@CreationDate, getdate()), @UserID, @GroupID, @TrainingID, @AcademyID, @ProgramID, COALESCE(@Active, (1)), COALESCE(@StartDate, getdate()+(1)), @EndDate, COALESCE(@ParticipationCount, (3)), COALESCE(@Mandatory, (1)))

RETURN SCOPE_IDENTITY()

