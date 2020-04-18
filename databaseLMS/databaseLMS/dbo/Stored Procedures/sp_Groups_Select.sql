
----------------------------------------------------------------------------
-- Select a single record from Groups
----------------------------------------------------------------------------
CREATE PROC sp_Groups_Select
	@GroupID int
AS

SELECT	GroupID,
	CreationDate,
	GroupName,
	Described,
	UserID,
	EntityID,
	BranchID,
	Active,
	EndDate
FROM	Groups
WHERE 	GroupID = @GroupID

