
----------------------------------------------------------------------------
-- Select a single record from UserType
----------------------------------------------------------------------------
CREATE PROC sp_UserType_Select
	@UserTypeID tinyint
AS

SELECT	UserTypeID,
	UserTypeName
FROM	UserType
WHERE 	UserTypeID = @UserTypeID

