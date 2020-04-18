
----------------------------------------------------------------------------
-- Select a single record from Program
----------------------------------------------------------------------------
CREATE PROC sp_Program_Select
	@ProgramID int
AS

SELECT	ProgramID,
	CreationDate,
	ProgramName,
	Active,
	Described,
	StartDate,
	EndDate,
	AcademyID,
	EntityID,
	UserID,
	BranchID,
	OnlineStore
FROM	Program
WHERE 	ProgramID = @ProgramID

