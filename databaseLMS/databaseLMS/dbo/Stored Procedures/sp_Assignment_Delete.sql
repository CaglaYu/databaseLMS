
----------------------------------------------------------------------------
-- Delete a single record from Assignment
----------------------------------------------------------------------------
CREATE PROC sp_Assignment_Delete
	@AssignmentID int
AS

DELETE	Assignment
WHERE 	AssignmentID = @AssignmentID

