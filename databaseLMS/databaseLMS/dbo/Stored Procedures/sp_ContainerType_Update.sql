
----------------------------------------------------------------------------
-- Update a single record in ContainerType
----------------------------------------------------------------------------
CREATE PROC sp_ContainerType_Update
	@ContainerTypeID tinyint,
	@ContainerTypeName varchar(40)
AS

UPDATE	ContainerType
SET	ContainerTypeName = @ContainerTypeName
WHERE 	ContainerTypeID = @ContainerTypeID

