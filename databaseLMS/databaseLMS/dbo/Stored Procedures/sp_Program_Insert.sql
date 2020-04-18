
----------------------------------------------------------------------------
-- Insert a single record into Program
----------------------------------------------------------------------------
CREATE PROC sp_Program_Insert
	@CreationDate datetime = NULL,
	@ProgramName varchar(100),
	@Active bit = NULL,
	@Described varchar(200) = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@AcademyID int = NULL,
	@EntityID int,
	@UserID int,
	@BranchID int = NULL,
	@OnlineStore bit = NULL
AS

INSERT Program(CreationDate, ProgramName, Active, Described, StartDate, EndDate, AcademyID, EntityID, UserID, BranchID, OnlineStore)
VALUES (COALESCE(@CreationDate, getdate()), @ProgramName, COALESCE(@Active, (1)), @Described, COALESCE(@StartDate, getdate()), @EndDate, @AcademyID, @EntityID, @UserID, @BranchID, COALESCE(@OnlineStore, (0)))

RETURN SCOPE_IDENTITY()

