
----------------------------------------------------------------------------
-- Update a single record in Users
----------------------------------------------------------------------------
CREATE PROC sp_Users_Update
	@UserID int,
	@CreationDate datetime,
	@UserName varchar(100),
	@Email varchar(100),
	@UserPassword binary(64),
	@Active bit,
	@CountryCode char(3),
	@City varchar(50) = NULL,
	@LanguageCode char(3),
	@MembershipTypeID tinyint = NULL,
	@EntityID int = NULL,
	@BranchID int = NULL,
	@Department varchar(100) = NULL,
	@JobTitle varchar(100) = NULL,
	@EmployeeID varchar(100) = NULL,
	@UserTypeID tinyint = NULL
AS

UPDATE	Users
SET	CreationDate = COALESCE(@CreationDate, getdate()),
	UserName = @UserName,
	Email = @Email,
	UserPassword = @UserPassword,
	Active = COALESCE(@Active, (1)),
	CountryCode = @CountryCode,
	City = @City,
	LanguageCode = @LanguageCode,
	MembershipTypeID = @MembershipTypeID,
	EntityID = @EntityID,
	BranchID = @BranchID,
	Department = @Department,
	JobTitle = @JobTitle,
	EmployeeID = @EmployeeID,
	UserTypeID = @UserTypeID
WHERE 	UserID = @UserID

