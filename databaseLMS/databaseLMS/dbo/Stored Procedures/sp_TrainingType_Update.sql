
----------------------------------------------------------------------------
-- Update a single record in TrainingType
----------------------------------------------------------------------------
CREATE PROC sp_TrainingType_Update
	@TrainingTypeID tinyint,
	@TrainingTypeName varchar(30)
AS

UPDATE	TrainingType
SET	TrainingTypeName = @TrainingTypeName
WHERE 	TrainingTypeID = @TrainingTypeID

