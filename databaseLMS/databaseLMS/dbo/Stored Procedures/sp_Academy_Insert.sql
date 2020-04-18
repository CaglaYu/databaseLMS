
----------------------------------------------------------------------------
-- Insert a single record into Academy
----------------------------------------------------------------------------
CREATE PROC sp_Academy_Insert
	@CreationDate datetime = NULL,
	@AcademyName varchar(100),
	@Active bit = NULL,
	@Described varchar(200) = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@EntityID int,
	@UserID int,
	@BranchID int = NULL,
	@OnlineStore bit = NULL
AS

INSERT Academy(CreationDate, AcademyName, Active, Described, StartDate, EndDate, EntityID, UserID, BranchID, OnlineStore)
VALUES (COALESCE(@CreationDate, getdate()), @AcademyName, COALESCE(@Active, (1)), @Described, COALESCE(@StartDate, getdate()), @EndDate, @EntityID, @UserID, @BranchID, COALESCE(@OnlineStore, (0)))

RETURN SCOPE_IDENTITY()

