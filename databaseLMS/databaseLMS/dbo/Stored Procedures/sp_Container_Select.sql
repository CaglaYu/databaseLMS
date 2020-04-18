
----------------------------------------------------------------------------
-- Select a single record from Container
----------------------------------------------------------------------------
CREATE PROC sp_Container_Select
	@ContainerID int
AS

SELECT	ContainerID,
	TrainingID,
	ContainerOrder,
	ContainerTypeID,
	ContainerLayoutID,
	IsHidden,
	BackgroundColor,
	Transparency,
	KeepLast
FROM	Container
WHERE 	ContainerID = @ContainerID

