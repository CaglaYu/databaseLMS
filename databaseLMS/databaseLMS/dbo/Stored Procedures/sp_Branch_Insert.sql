
----------------------------------------------------------------------------
-- Insert a single record into Branch
----------------------------------------------------------------------------
CREATE PROC sp_Branch_Insert
	@CreationDate datetime = NULL,
	@BranchName varchar(100),
	@Active bit = NULL,
	@EntityID int,
	@UserID int,
	@BranchLogoON bit = NULL,
	@BranchLogo varchar(200),
	@KeepEntityLogo bit = NULL,
	@BranchSiteColor char(6) = NULL
AS

INSERT Branch(CreationDate, BranchName, Active, EntityID, UserID, BranchLogoON, BranchLogo, KeepEntityLogo, BranchSiteColor)
VALUES (COALESCE(@CreationDate, getdate()), @BranchName, COALESCE(@Active, (1)), @EntityID, @UserID, COALESCE(@BranchLogoON, (0)), @BranchLogo, COALESCE(@KeepEntityLogo, (1)), COALESCE(@BranchSiteColor, 'FFCC00'))

RETURN SCOPE_IDENTITY()

