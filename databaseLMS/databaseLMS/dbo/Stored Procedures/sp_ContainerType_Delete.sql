
----------------------------------------------------------------------------
-- Delete a single record from ContainerType
----------------------------------------------------------------------------
CREATE PROC sp_ContainerType_Delete
	@ContainerTypeID tinyint
AS

DELETE	ContainerType
WHERE 	ContainerTypeID = @ContainerTypeID

