
CREATE FUNCTION passing_or_failing (
	@grade CHAR(50)
)
RETURNS CHAR(50) AS
BEGIN
	DECLARE @return_value CHAR(50);
	SET @return_value = 'passing';
    IF (@grade = 'F') SET @return_value = 'failing';
 
    RETURN @return_value
END;
