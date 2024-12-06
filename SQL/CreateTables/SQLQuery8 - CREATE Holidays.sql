USE PD_318_DML;
GO

CREATE TABLE Holidays
(
	holiday_id		SMALLINT PRIMARY KEY,
	holiday_name	NVARCHAR(150) NULL,
	--[date] DATE NOT NULL,
)