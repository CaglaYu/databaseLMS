
----------------------------------------------------------------------------
-- Select a single record from Training
----------------------------------------------------------------------------
CREATE PROC sp_Training_Select
	@TrainingID int
AS

SELECT	TrainingID,
	CreationDate,
	TrainingTypeID,
	TrainingName,
	Active,
	Described,
	StartDate,
	EndDate,
	AcademyID,
	ProgramID,
	UserID,
	TrainingOrder,
	InstructorID,
	OnlineStore
FROM	Training
WHERE 	TrainingID = @TrainingID

