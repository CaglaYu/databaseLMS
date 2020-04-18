
----------------------------------------------------------------------------
-- Delete a single record from Branch
----------------------------------------------------------------------------
CREATE PROC sp_Branch_Delete
	@BranchID int
AS

DELETE	Branch
WHERE 	BranchID = @BranchID

