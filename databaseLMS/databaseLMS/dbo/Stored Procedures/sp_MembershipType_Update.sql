
----------------------------------------------------------------------------
-- Update a single record in MembershipType
----------------------------------------------------------------------------
CREATE PROC sp_MembershipType_Update
	@MembershipTypeID tinyint,
	@MembershipTypeName varchar(40)
AS

UPDATE	MembershipType
SET	MembershipTypeName = @MembershipTypeName
WHERE 	MembershipTypeID = @MembershipTypeID

