
----------------------------------------------------------------------------
-- Select a single record from Users
----------------------------------------------------------------------------
CREATE PROC sp_Users_Select
	@UserID int
AS

SELECT	UserID,
	CreationDate,
	UserName,
	Email,
	UserPassword,
	Active,
	CountryCode,
	City,
	LanguageCode,
	MembershipTypeID,
	EntityID,
	BranchID,
	Department,
	JobTitle,
	EmployeeID,
	UserTypeID
FROM	Users
WHERE 	UserID = @UserID

