USE AcademySQL;

INSERT Teachers
	(last_name,		first_name,		middle_name,	birth_date,		work_since)
VALUES
	(N'������',		N'����',		N'�����������',	N'1991-01-01',	N'2008-01-01'),
	(N'���������',	N'����������',	N'����������',	N'1992-02-02',	N'2015-12-12'),
	(N'�����',		N'��������',	N'����������',	N'1963-03-03',	N'2012-12-12');

SELECT * FROM Teachers;