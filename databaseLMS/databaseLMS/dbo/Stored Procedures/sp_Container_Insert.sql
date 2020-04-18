
----------------------------------------------------------------------------
-- Insert a single record into Container
----------------------------------------------------------------------------
CREATE PROC sp_Container_Insert
	@TrainingID int,
	@ContainerOrder smallint,
	@ContainerTypeID tinyint = NULL,
	@ContainerLayoutID tinyint = NULL,
	@IsHidden bit = NULL,
	@BackgroundColor char(6) = NULL,
	@Transparency tinyint = NULL,
	@KeepLast bit = NULL
AS

INSERT Container(TrainingID, ContainerOrder, ContainerTypeID, ContainerLayoutID, IsHidden, BackgroundColor, Transparency, KeepLast)
VALUES (@TrainingID, @ContainerOrder, COALESCE(@ContainerTypeID, (1)), COALESCE(@ContainerLayoutID, (1)), COALESCE(@IsHidden, (0)), COALESCE(@BackgroundColor, '000000'), COALESCE(@Transparency, (0)), COALESCE(@KeepLast, (0)))

RETURN SCOPE_IDENTITY()

