
----------------------------------------------------------------------------
-- Select a single record from Academy
----------------------------------------------------------------------------
CREATE PROC sp_Academy_Select
	@AcademyID int
AS

SELECT	AcademyID,
	CreationDate,
	AcademyName,
	Active,
	Described,
	StartDate,
	EndDate,
	EntityID,
	UserID,
	BranchID,
	OnlineStore
FROM	Academy
WHERE 	AcademyID = @AcademyID

