
----------------------------------------------------------------------------
-- Update a single record in Container
----------------------------------------------------------------------------
CREATE PROC sp_Container_Update
	@ContainerID int,
	@TrainingID int,
	@ContainerOrder smallint,
	@ContainerTypeID tinyint,
	@ContainerLayoutID tinyint,
	@IsHidden bit,
	@BackgroundColor char(6),
	@Transparency tinyint,
	@KeepLast bit
AS

UPDATE	Container
SET	TrainingID = @TrainingID,
	ContainerOrder = @ContainerOrder,
	ContainerTypeID = COALESCE(@ContainerTypeID, (1)),
	ContainerLayoutID = COALESCE(@ContainerLayoutID, (1)),
	IsHidden = COALESCE(@IsHidden, (0)),
	BackgroundColor = COALESCE(@BackgroundColor, '000000'),
	Transparency = COALESCE(@Transparency, (0)),
	KeepLast = COALESCE(@KeepLast, (0))
WHERE 	ContainerID = @ContainerID

