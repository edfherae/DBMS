USE PD_318_DML;

INSERT Disciplines
	(discipline_id, discipline_name, number_of_lessons)
VALUES
	(1,				N'��������-��������������� ���������������� � �������������� ����� C++', 50),
	(2,				N'���������������� Windows 10', 50),
	(3,				N'��������-��������������� ��������������. ���� UML � �������� ��������������', 15),
	(4,				N'��������� Microsoft .NET � ���� ���������������� C#', 15),
	(5,				N'������ ���������� ���������� � �������������� Windows Forms � WPF', 15),
	(6,				N'������ ��� ������. ���������������� MS SQL Server', 10);

SELECT * FROM Disciplines;
