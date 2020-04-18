
----------------------------------------------------------------------------
-- Insert a single record into BreakOutSession
----------------------------------------------------------------------------
CREATE PROC sp_BreakOutSession_Insert
	@ExerciseID int,
	@BOName varchar(200),
	@Described varchar(200) = NULL,
	@ElementID int = NULL,
	@BOOrder smallint = NULL
AS

INSERT BreakOutSession(ExerciseID, BOName, Described, ElementID, BOOrder)
VALUES (@ExerciseID, @BOName, @Described, @ElementID, @BOOrder)

RETURN SCOPE_IDENTITY()

