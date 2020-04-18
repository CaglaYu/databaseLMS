
----------------------------------------------------------------------------
-- Insert a single record into Users
----------------------------------------------------------------------------
CREATE PROC sp_Users_Insert
	@CreationDate datetime = NULL,
	@UserName varchar(100),
	@Email varchar(100),
	@UserPassword binary(64),
	@Active bit = NULL,
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

INSERT Users(CreationDate, UserName, Email, UserPassword, Active, CountryCode, City, LanguageCode, MembershipTypeID, EntityID, BranchID, Department, JobTitle, EmployeeID, UserTypeID)
VALUES (COALESCE(@CreationDate, getdate()), @UserName, @Email, @UserPassword, COALESCE(@Active, (1)), @CountryCode, @City, @LanguageCode, @MembershipTypeID, @EntityID, @BranchID, @Department, @JobTitle, @EmployeeID, @UserTypeID)

RETURN SCOPE_IDENTITY()

