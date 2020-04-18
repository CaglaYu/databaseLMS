
----------------------------------------------------------------------------
-- Delete a single record from Entity
----------------------------------------------------------------------------
CREATE PROC sp_Entity_Delete
	@EntityID int
AS

DELETE	Entity
WHERE 	EntityID = @EntityID

