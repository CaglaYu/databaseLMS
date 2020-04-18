
----------------------------------------------------------------------------
-- Select a single record from Assignment
----------------------------------------------------------------------------
CREATE PROC sp_Assignment_Select
	@AssignmentID int
AS

SELECT	AssignmentID,
	CreationDate,
	UserID,
	GroupID,
	TrainingID,
	AcademyID,
	ProgramID,
	Active,
	StartDate,
	EndDate,
	ParticipationCount,
	Mandatory
FROM	Assignment
WHERE 	AssignmentID = @AssignmentID

