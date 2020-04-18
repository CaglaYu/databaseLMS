
----------------------------------------------------------------------------
-- Insert a single record into Groups
----------------------------------------------------------------------------
CREATE PROC sp_Groups_Insert
	@CreationDate datetime = NULL,
	@GroupName varchar(100),
	@Described varchar(200) = NULL,
	@UserID int,
	@EntityID int,
	@BranchID int = NULL,
	@Active bit = NULL,
	@EndDate datetime = NULL
AS

INSERT Groups(CreationDate, GroupName, Described, UserID, EntityID, BranchID, Active, EndDate)
VALUES (COALESCE(@CreationDate, getdate()), @GroupName, @Described, @UserID, @EntityID, @BranchID, COALESCE(@Active, (1)), @EndDate)

RETURN SCOPE_IDENTITY()

