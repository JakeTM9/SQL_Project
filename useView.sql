USE [School]
GO

SELECT [STD_CODE]
    ,[STD_FNAME]
    ,[STD_LNAME]
    ,[STD_CUM_GPA]
    ,[ENR_GRADE]
	,[CRS_TITLE]
	
	FROM [dbo].[A STUDENTS] S INNER JOIN dbo.[Course] C
	ON S.[CRS_CODE] = C.[CRS_CODE]
	WHERE C.[CRS_TITLE] = 'Math' OR C.[CRS_TITLE] = 'Science'
	ORDER BY S.[STD_CODE]
GO


