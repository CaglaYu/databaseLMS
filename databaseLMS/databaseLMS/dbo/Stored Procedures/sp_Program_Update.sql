
----------------------------------------------------------------------------
-- Update a single record in Program
----------------------------------------------------------------------------
CREATE PROC sp_Program_Update
	@ProgramID int,
	@CreationDate datetime,
	@ProgramName varchar(100),
	@Active bit,
	@Described varchar(200) = NULL,
	@StartDate datetime,
	@EndDate datetime = NULL,
	@AcademyID int = NULL,
	@EntityID int,
	@UserID int,
	@BranchID int = NULL,
	@OnlineStore bit
AS

UPDATE	Program
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	ProgramName = @ProgramName,
	Active = COALESCE(@Active, (1)),
	Described = @Described,
	StartDate = COALESCE(@StartDate, getdate()),
	EndDate = @EndDate,
	AcademyID = @AcademyID,
	EntityID = @EntityID,
	UserID = @UserID,
	BranchID = @BranchID,
	OnlineStore = COALESCE(@OnlineStore, (0))
WHERE 	ProgramID = @ProgramID

