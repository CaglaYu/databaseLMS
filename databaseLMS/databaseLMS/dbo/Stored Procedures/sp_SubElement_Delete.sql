
----------------------------------------------------------------------------
-- Delete a single record from SubElement
----------------------------------------------------------------------------
CREATE PROC sp_SubElement_Delete
	@SubID int
AS

DELETE	SubElement
WHERE 	SubID = @SubID

