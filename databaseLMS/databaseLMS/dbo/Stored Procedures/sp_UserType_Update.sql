
----------------------------------------------------------------------------
-- Update a single record in UserType
----------------------------------------------------------------------------
CREATE PROC sp_UserType_Update
	@UserTypeID tinyint,
	@UserTypeName varchar(40)
AS

UPDATE	UserType
SET	UserTypeName = @UserTypeName
WHERE 	UserTypeID = @UserTypeID

