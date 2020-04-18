
----------------------------------------------------------------------------
-- Delete a single record from Program
----------------------------------------------------------------------------
CREATE PROC sp_Program_Delete
	@ProgramID int
AS

DELETE	Program
WHERE 	ProgramID = @ProgramID

