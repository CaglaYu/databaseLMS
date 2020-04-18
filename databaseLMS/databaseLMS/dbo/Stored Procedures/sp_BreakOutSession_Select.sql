
----------------------------------------------------------------------------
-- Select a single record from BreakOutSession
----------------------------------------------------------------------------
CREATE PROC sp_BreakOutSession_Select
	@BOID int
AS

SELECT	BOID,
	ExerciseID,
	BOName,
	Described,
	ElementID,
	BOOrder
FROM	BreakOutSession
WHERE 	BOID = @BOID

