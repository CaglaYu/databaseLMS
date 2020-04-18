
----------------------------------------------------------------------------
-- Delete a single record from MembershipType
----------------------------------------------------------------------------
CREATE PROC sp_MembershipType_Delete
	@MembershipTypeID tinyint
AS

DELETE	MembershipType
WHERE 	MembershipTypeID = @MembershipTypeID

