USE PD_318_DML
GO
ALTER FUNCTION GetLastMonOfJuly
(
	@year AS INT
)
RETURNS DATE
AS
BEGIN
	DECLARE @date AS DATE = DATEFROMPARTS(@year, 07, 31);
	RETURN DATEADD(DAY, 1 - DATEPART(WEEKDAY, @date), @date);
END