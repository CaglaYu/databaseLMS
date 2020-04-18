
----------------------------------------------------------------------------
-- Select a single record from ContainerLayout
----------------------------------------------------------------------------
CREATE PROC sp_ContainerLayout_Select
	@ContainerLayoutID tinyint
AS

SELECT	ContainerLayoutID,
	ContainerLayoutName
FROM	ContainerLayout
WHERE 	ContainerLayoutID = @ContainerLayoutID

