
----------------------------------------------------------------------------
-- Select a single record from TrainingType
----------------------------------------------------------------------------
CREATE PROC sp_TrainingType_Select
	@TrainingTypeID tinyint
AS

SELECT	TrainingTypeID,
	TrainingTypeName
FROM	TrainingType
WHERE 	TrainingTypeID = @TrainingTypeID

