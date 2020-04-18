
----------------------------------------------------------------------------
-- Update a single record in EntityType
----------------------------------------------------------------------------
CREATE PROC sp_EntityType_Update
	@EntityTypeID tinyint,
	@EntityTypeName varchar(40)
AS

UPDATE	EntityType
SET	EntityTypeName = @EntityTypeName
WHERE 	EntityTypeID = @EntityTypeID

