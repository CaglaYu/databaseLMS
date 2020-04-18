
----------------------------------------------------------------------------
-- Update a single record in ContainerLayout
----------------------------------------------------------------------------
CREATE PROC sp_ContainerLayout_Update
	@ContainerLayoutID tinyint,
	@ContainerLayoutName varchar(40)
AS

UPDATE	ContainerLayout
SET	ContainerLayoutName = @ContainerLayoutName
WHERE 	ContainerLayoutID = @ContainerLayoutID

