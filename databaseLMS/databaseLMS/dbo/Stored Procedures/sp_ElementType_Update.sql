
----------------------------------------------------------------------------
-- Update a single record in ElementType
----------------------------------------------------------------------------
CREATE PROC sp_ElementType_Update
	@ElementTypeID tinyint,
	@ElementTypeName varchar(40)
AS

UPDATE	ElementType
SET	ElementTypeName = @ElementTypeName
WHERE 	ElementTypeID = @ElementTypeID

