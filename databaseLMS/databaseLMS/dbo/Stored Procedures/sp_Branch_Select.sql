
----------------------------------------------------------------------------
-- Select a single record from Branch
----------------------------------------------------------------------------
CREATE PROC sp_Branch_Select
	@BranchID int
AS

SELECT	BranchID,
	CreationDate,
	BranchName,
	Active,
	EntityID,
	UserID,
	BranchLogoON,
	BranchLogo,
	KeepEntityLogo,
	BranchSiteColor
FROM	Branch
WHERE 	BranchID = @BranchID

