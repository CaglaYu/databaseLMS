
----------------------------------------------------------------------------
-- Insert a single record into ContainerType
----------------------------------------------------------------------------
CREATE PROC sp_ContainerType_Insert
	@ContainerTypeName varchar(40)
AS

INSERT ContainerType(ContainerTypeName)
VALUES (@ContainerTypeName)

RETURN SCOPE_IDENTITY()

