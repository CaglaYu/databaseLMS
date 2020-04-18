
----------------------------------------------------------------------------
-- Insert a single record into TrainingType
----------------------------------------------------------------------------
CREATE PROC sp_TrainingType_Insert
	@TrainingTypeName varchar(30)
AS

INSERT TrainingType(TrainingTypeName)
VALUES (@TrainingTypeName)

RETURN SCOPE_IDENTITY()

