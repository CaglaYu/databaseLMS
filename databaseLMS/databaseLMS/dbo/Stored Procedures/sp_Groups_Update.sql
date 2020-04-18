
----------------------------------------------------------------------------
-- Update a single record in Groups
----------------------------------------------------------------------------
CREATE PROC sp_Groups_Update
	@GroupID int,
	@CreationDate datetime,
	@GroupName varchar(100),
	@Described varchar(200) = NULL,
	@UserID int,
	@EntityID int,
	@BranchID int = NULL,
	@Active bit,
	@EndDate datetime = NULL
AS

UPDATE	Groups
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	GroupName = @GroupName,
	Described = @Described,
	UserID = @UserID,
	EntityID = @EntityID,
	BranchID = @BranchID,
	Active = COALESCE(@Active, (1)),
	EndDate = @EndDate
WHERE 	GroupID = @GroupID

