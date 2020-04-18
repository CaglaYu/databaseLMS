
----------------------------------------------------------------------------
-- Delete a single record from UserType
----------------------------------------------------------------------------
CREATE PROC sp_UserType_Delete
	@UserTypeID tinyint
AS

DELETE	UserType
WHERE 	UserTypeID = @UserTypeID

