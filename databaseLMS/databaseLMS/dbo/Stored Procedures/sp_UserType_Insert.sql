
----------------------------------------------------------------------------
-- Insert a single record into UserType
----------------------------------------------------------------------------
CREATE PROC sp_UserType_Insert
	@UserTypeName varchar(40)
AS

INSERT UserType(UserTypeName)
VALUES (@UserTypeName)

RETURN SCOPE_IDENTITY()

