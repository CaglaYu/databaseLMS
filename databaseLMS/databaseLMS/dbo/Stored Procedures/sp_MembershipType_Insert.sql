
----------------------------------------------------------------------------
-- Insert a single record into MembershipType
----------------------------------------------------------------------------
CREATE PROC sp_MembershipType_Insert
	@MembershipTypeName varchar(40)
AS

INSERT MembershipType(MembershipTypeName)
VALUES (@MembershipTypeName)

RETURN SCOPE_IDENTITY()

