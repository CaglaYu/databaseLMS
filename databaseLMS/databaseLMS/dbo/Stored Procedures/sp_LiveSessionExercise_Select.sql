
----------------------------------------------------------------------------
-- Select a single record from LiveSessionExercise
----------------------------------------------------------------------------
CREATE PROC sp_LiveSessionExercise_Select
	@ExerciseID int
AS

SELECT	ExerciseID,
	TrainingID,
	Exercise,
	Described,
	ElementID,
	ExerciseOrder
FROM	LiveSessionExercise
WHERE 	ExerciseID = @ExerciseID

