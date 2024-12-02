USE PD_318_DML;

INSERT Disciplines
	(discipline_id, discipline_name, number_of_lessons)
VALUES
	(1,				N'Объектно-ориентированное программирование с использованием языка C++', 50),
	(2,				N'Конфигурирование Windows 10', 50),
	(3,				N'Объектно-ориентированное проектирование. Язык UML и паттерны проектирования', 15),
	(4,				N'Платформа Microsoft .NET и язык программирования C#', 15),
	(5,				N'Основы разработки приложений с использованием Windows Forms и WPF', 15),
	(6,				N'Теория баз данных. Программирование MS SQL Server', 10);

SELECT * FROM Disciplines;
