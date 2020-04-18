
----------------------------------------------------------------------------
-- Update a single record in BreakOutSession
----------------------------------------------------------------------------
CREATE PROC sp_BreakOutSession_Update
	@BOID int,
	@ExerciseID int,
	@BOName varchar(200),
	@Described varchar(200) = NULL,
	@ElementID int = NULL,
	@BOOrder smallint = NULL
AS

UPDATE	BreakOutSession
SET	ExerciseID = @ExerciseID,
	BOName = @BOName,
	Described = @Described,
	ElementID = @ElementID,
	BOOrder = @BOOrder
WHERE 	BOID = @BOID

