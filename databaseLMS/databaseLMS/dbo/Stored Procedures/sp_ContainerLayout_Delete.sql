
----------------------------------------------------------------------------
-- Delete a single record from ContainerLayout
----------------------------------------------------------------------------
CREATE PROC sp_ContainerLayout_Delete
	@ContainerLayoutID tinyint
AS

DELETE	ContainerLayout
WHERE 	ContainerLayoutID = @ContainerLayoutID

