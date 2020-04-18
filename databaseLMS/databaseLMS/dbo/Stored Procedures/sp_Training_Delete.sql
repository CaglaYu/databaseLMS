
----------------------------------------------------------------------------
-- Delete a single record from Training
----------------------------------------------------------------------------
CREATE PROC sp_Training_Delete
	@TrainingID int
AS

DELETE	Training
WHERE 	TrainingID = @TrainingID

