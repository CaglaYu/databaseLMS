
----------------------------------------------------------------------------
-- Insert a single record into LiveSessionExercise
----------------------------------------------------------------------------
CREATE PROC sp_LiveSessionExercise_Insert
	@TrainingID int,
	@Exercise varchar(200),
	@Described varchar(200) = NULL,
	@ElementID int = NULL,
	@ExerciseOrder smallint = NULL
AS

INSERT LiveSessionExercise(TrainingID, Exercise, Described, ElementID, ExerciseOrder)
VALUES (@TrainingID, @Exercise, @Described, @ElementID, @ExerciseOrder)

RETURN SCOPE_IDENTITY()

