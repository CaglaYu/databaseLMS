
----------------------------------------------------------------------------
-- Select a single record from EntityType
----------------------------------------------------------------------------
CREATE PROC sp_EntityType_Select
	@EntityTypeID tinyint
AS

SELECT	EntityTypeID,
	EntityTypeName
FROM	EntityType
WHERE 	EntityTypeID = @EntityTypeID

