
----------------------------------------------------------------------------
-- Insert a single record into ContainerLayout
----------------------------------------------------------------------------
CREATE PROC sp_ContainerLayout_Insert
	@ContainerLayoutName varchar(40)
AS

INSERT ContainerLayout(ContainerLayoutName)
VALUES (@ContainerLayoutName)

RETURN SCOPE_IDENTITY()

