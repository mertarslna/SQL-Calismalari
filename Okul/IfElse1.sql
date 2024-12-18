DECLARE @x INT = 10,
		@y INT = 20;

IF (@x>0)
BEGIN
	IF (@x < @y)
		PRINT 'x > 0 and x < y' ;
	ELSE
		PRINT 'x > 0 and x >= y';
END
