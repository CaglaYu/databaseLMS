
----------------------------------------------------------------------------
-- Select a single record from ElementType
----------------------------------------------------------------------------
CREATE PROC sp_ElementType_Select
	@ElementTypeID tinyint
AS

SELECT	ElementTypeID,
	ElementTypeName
FROM	ElementType
WHERE 	ElementTypeID = @ElementTypeID

