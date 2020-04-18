
----------------------------------------------------------------------------
-- Select a single record from ContainerType
----------------------------------------------------------------------------
CREATE PROC sp_ContainerType_Select
	@ContainerTypeID tinyint
AS

SELECT	ContainerTypeID,
	ContainerTypeName
FROM	ContainerType
WHERE 	ContainerTypeID = @ContainerTypeID

