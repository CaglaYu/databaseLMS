
----------------------------------------------------------------------------
-- Delete a single record from Groups
----------------------------------------------------------------------------
CREATE PROC sp_Groups_Delete
	@GroupID int
AS

DELETE	Groups
WHERE 	GroupID = @GroupID

