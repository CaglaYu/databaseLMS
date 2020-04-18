
----------------------------------------------------------------------------
-- Delete a single record from Academy
----------------------------------------------------------------------------
CREATE PROC sp_Academy_Delete
	@AcademyID int
AS

DELETE	Academy
WHERE 	AcademyID = @AcademyID

