
----------------------------------------------------------------------------
-- Delete a single record from BreakOutSession
----------------------------------------------------------------------------
CREATE PROC sp_BreakOutSession_Delete
	@BOID int
AS

DELETE	BreakOutSession
WHERE 	BOID = @BOID

