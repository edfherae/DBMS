USE PD_318_DML
GO

CREATE FUNCTION GetEasterDate
(
	--Алгоритм Гаусса https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC_%D0%93%D0%B0%D1%83%D1%81%D1%81%D0%B0_%D0%B2%D1%8B%D1%87%D0%B8%D1%81%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F_%D0%B4%D0%B0%D1%82%D1%8B_%D0%9F%D0%B0%D1%81%D1%85%D0%B8#cite_note-Bien-5
	@year	AS INT,
	@a		AS TINYINT = @year % 19,
	@b		AS TINYINT = @year % 4,
	@c		AS TINYINT = @year % 7,
	@d		AS TINYINT = (19 * @a + 15) / 30,
	@e		AS TINYINT = (2 * @b + 4 * @c + 6 * @d) / 7,
	@f		AS TINYINT = @d + @e
)
RETURNS DATE
AS
BEGIN
	IF(@f <= 26) RETURN DATEFROMPARTS(@year, 04, 4 + @f)
	ELSE IF (@f > 26) RETURN DATEFROMPARTS(@year, 05, 26)

END