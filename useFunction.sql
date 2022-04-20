SELECT S.[STD_CODE]
    ,[STD_FNAME]
    ,[STD_LNAME]
	, dbo.passing_or_failing(E.ENR_GRADE) AS 'Status'
    ,[STD_CUM_GPA]
	,[ENR_CODE]
	,[ENR_GRADE]
	,[ENR_START_DATE]
	,[ENR_END_DATE]
	,[CRS_CODE]
FROM [dbo].[Student] S INNER JOIN [dbo].[Enrollment] E
ON S.[STD_CODE] = E.[STD_CODE]
ORDER BY S.[STD_CODE]