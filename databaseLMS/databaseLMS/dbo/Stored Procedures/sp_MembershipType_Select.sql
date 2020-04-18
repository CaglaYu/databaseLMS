
----------------------------------------------------------------------------
-- Select a single record from MembershipType
----------------------------------------------------------------------------
CREATE PROC sp_MembershipType_Select
	@MembershipTypeID tinyint
AS

SELECT	MembershipTypeID,
	MembershipTypeName
FROM	MembershipType
WHERE 	MembershipTypeID = @MembershipTypeID

