
----------------------------------------------------------------------------
-- Delete a single record from ElementType
----------------------------------------------------------------------------
CREATE PROC sp_ElementType_Delete
	@ElementTypeID tinyint
AS

DELETE	ElementType
WHERE 	ElementTypeID = @ElementTypeID

