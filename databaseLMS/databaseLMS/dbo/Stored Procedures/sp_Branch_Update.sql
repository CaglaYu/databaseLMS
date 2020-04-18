
----------------------------------------------------------------------------
-- Update a single record in Branch
----------------------------------------------------------------------------
CREATE PROC sp_Branch_Update
	@BranchID int,
	@CreationDate datetime,
	@BranchName varchar(100),
	@Active bit,
	@EntityID int,
	@UserID int,
	@BranchLogoON bit,
	@BranchLogo varchar(200),
	@KeepEntityLogo bit,
	@BranchSiteColor char(6)
AS

UPDATE	Branch
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	BranchName = @BranchName,
	Active = COALESCE(@Active, (1)),
	EntityID = @EntityID,
	UserID = @UserID,
	BranchLogoON = COALESCE(@BranchLogoON, (0)),
	BranchLogo = @BranchLogo,
	KeepEntityLogo = COALESCE(@KeepEntityLogo, (1)),
	BranchSiteColor = COALESCE(@BranchSiteColor, 'FFCC00')
WHERE 	BranchID = @BranchID

