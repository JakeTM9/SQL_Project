USE [School]

SELECT [STD_CODE]
      ,[STD_FNAME]
      ,[STD_LNAME]
      ,[STD_CUM_GPA]
      ,[STD_START_DATE]
  FROM [dbo].[Student]

SELECT [ENR_CODE]
    ,[ENR_GRADE]
    ,[ENR_START_DATE]
    ,[ENR_END_DATE]
    ,[CRS_CODE]
    ,[STD_CODE]
FROM [dbo].[Enrollment]

SELECT [CRS_CODE]
      ,[CRS_TITLE]
      ,[CRS_CREDIT_HOURS]
      ,[CRS_DESCRIPTION]
      ,[CRS_BOOK_NAME]
      ,[INS_CODE]
      ,[DPT_CODE]
  FROM [dbo].[Course]

SELECT [INS_CODE]
      ,[INS_FNAME]
      ,[INS_LNAME]
      ,[INS_START_DATE]
      ,[INS_SALARY]
      ,[DPT_CODE]
  FROM [dbo].[Instructor]

SELECT [DPT_CODE]
      ,[DPT_NAME]
      ,[DPT_BUDGET]
      ,[DPT_DESCRIPTION]
      ,[DPT_CREATION_DATE]
  FROM [dbo].[Department]

GO


