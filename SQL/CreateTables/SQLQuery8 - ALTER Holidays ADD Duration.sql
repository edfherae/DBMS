USE PD_318_DML
GO

--ALTER TABLE Holidays
--ADD duration TINYINT 

UPDATE Holidays 
SET duration = 14
WHERE holiday_name LIKE N'%Кани%'; 
GO

UPDATE Holidays SET holiday_name = N'Новогодние каникулы'
WHERE holiday_name LIKE N'Новый год'

SELECT * FROM Holidays;