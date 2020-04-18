
----------------------------------------------------------------------------
-- Update a single record in LiveSessionExercise
----------------------------------------------------------------------------
CREATE PROC sp_LiveSessionExercise_Update
	@ExerciseID int,
	@TrainingID int,
	@Exercise varchar(200),
	@Described varchar(200) = NULL,
	@ElementID int = NULL,
	@ExerciseOrder smallint = NULL
AS

UPDATE	LiveSessionExercise
SET	TrainingID = @TrainingID,
	Exercise = @Exercise,
	Described = @Described,
	ElementID = @ElementID,
	ExerciseOrder = @ExerciseOrder
WHERE 	ExerciseID = @ExerciseID

