
----------------------------------------------------------------------------
-- Delete a single record from LiveSessionExercise
----------------------------------------------------------------------------
CREATE PROC sp_LiveSessionExercise_Delete
	@ExerciseID int
AS

DELETE	LiveSessionExercise
WHERE 	ExerciseID = @ExerciseID

