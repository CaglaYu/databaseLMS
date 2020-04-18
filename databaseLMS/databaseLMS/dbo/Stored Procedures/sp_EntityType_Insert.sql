
----------------------------------------------------------------------------
-- Insert a single record into EntityType
----------------------------------------------------------------------------
CREATE PROC sp_EntityType_Insert
	@EntityTypeName varchar(40)
AS

INSERT EntityType(EntityTypeName)
VALUES (@EntityTypeName)

RETURN SCOPE_IDENTITY()

