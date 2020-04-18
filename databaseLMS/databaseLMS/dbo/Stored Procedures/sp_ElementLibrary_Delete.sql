
----------------------------------------------------------------------------
-- Delete a single record from ElementLibrary
----------------------------------------------------------------------------
CREATE PROC sp_ElementLibrary_Delete
	@ElementID int
AS

DELETE	ElementLibrary
WHERE 	ElementID = @ElementID

