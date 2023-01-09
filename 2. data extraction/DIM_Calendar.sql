/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
	[DateKey],
	[FullDateAlternateKey] AS Date,
	[EnglishDayNameOfWeek] AS Day,
	[WeekNumberOfYear] AS WeekNr,
	[EnglishMonthName] AS Month,
	LEFT([EnglishMonthName],3) AS MonthShort,
	[MonthNumberOfYear] AS MonthNo,
	[CalendarQuarter] AS Quarter,
	[CalendarYear] AS Year
FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2019