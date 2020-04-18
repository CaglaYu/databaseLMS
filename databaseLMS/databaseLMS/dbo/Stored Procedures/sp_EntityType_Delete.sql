
----------------------------------------------------------------------------
-- Delete a single record from EntityType
----------------------------------------------------------------------------
CREATE PROC sp_EntityType_Delete
	@EntityTypeID tinyint
AS

DELETE	EntityType
WHERE 	EntityTypeID = @EntityTypeID

