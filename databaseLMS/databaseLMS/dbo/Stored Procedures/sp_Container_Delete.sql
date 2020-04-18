
----------------------------------------------------------------------------
-- Delete a single record from Container
----------------------------------------------------------------------------
CREATE PROC sp_Container_Delete
	@ContainerID int
AS

DELETE	Container
WHERE 	ContainerID = @ContainerID

