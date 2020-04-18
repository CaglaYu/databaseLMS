
----------------------------------------------------------------------------
-- Delete a single record from TrainingType
----------------------------------------------------------------------------
CREATE PROC sp_TrainingType_Delete
	@TrainingTypeID tinyint
AS

DELETE	TrainingType
WHERE 	TrainingTypeID = @TrainingTypeID

