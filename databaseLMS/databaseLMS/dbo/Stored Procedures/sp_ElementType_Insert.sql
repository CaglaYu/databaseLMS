
----------------------------------------------------------------------------
-- Insert a single record into ElementType
----------------------------------------------------------------------------
CREATE PROC sp_ElementType_Insert
	@ElementTypeName varchar(40)
AS

INSERT ElementType(ElementTypeName)
VALUES (@ElementTypeName)

RETURN SCOPE_IDENTITY()

