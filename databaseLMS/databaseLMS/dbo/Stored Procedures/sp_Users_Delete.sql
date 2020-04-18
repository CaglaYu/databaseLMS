
----------------------------------------------------------------------------
-- Delete a single record from Users
----------------------------------------------------------------------------
CREATE PROC sp_Users_Delete
	@UserID int
AS

DELETE	Users
WHERE 	UserID = @UserID

