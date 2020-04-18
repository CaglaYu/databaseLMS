
----------------------------------------------------------------------------
-- Update a single record in Academy
----------------------------------------------------------------------------
CREATE PROC sp_Academy_Update
	@AcademyID int,
	@CreationDate datetime,
	@AcademyName varchar(100),
	@Active bit,
	@Described varchar(200) = NULL,
	@StartDate datetime,
	@EndDate datetime = NULL,
	@EntityID int,
	@UserID int,
	@BranchID int = NULL,
	@OnlineStore bit
AS

UPDATE	Academy
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	AcademyName = @AcademyName,
	Active = COALESCE(@Active, (1)),
	Described = @Described,
	StartDate = COALESCE(@StartDate, getdate()),
	EndDate = @EndDate,
	EntityID = @EntityID,
	UserID = @UserID,
	BranchID = @BranchID,
	OnlineStore = COALESCE(@OnlineStore, (0))
WHERE 	AcademyID = @AcademyID

