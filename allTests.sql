USE School
GO
EXEC tSQLt.NewTestClass 'tests';
Go

/* START DATABASE UNIT TESTS (for table function)*/ 
CREATE OR ALTER PROCEDURE tests.[Test passing_or_failing function A]
AS
DECLARE @Expected AS VARCHAR(100)='passing'
DECLARE @Actual AS VARCHAR(100)
SELECT @Actual = dbo.passing_or_failing(N'A')
 EXEC tSQLt.AssertEquals @Expected,@Actual
GO

CREATE OR ALTER PROCEDURE tests.[Test passing_or_failing function C-]
AS
DECLARE @Expected AS VARCHAR(100)='passing'
DECLARE @Actual AS VARCHAR(100)

SELECT @Actual = dbo.passing_or_failing(N'C-')
 EXEC tSQLt.AssertEquals @Expected,@Actual
GO

CREATE OR ALTER PROCEDURE tests.[Test passing_or_failing function F]
AS
DECLARE @Expected AS VARCHAR(100)='failing'
DECLARE @Actual AS VARCHAR(100)

SELECT @Actual = dbo.passing_or_failing(N'F')
 EXEC tSQLt.AssertEquals @Expected,@Actual
GO

/* START SECURITY MODEL TESTS*/
CREATE OR ALTER PROC tests.[test Student Permission Pass]
AS
BEGIN 
	EXEC tSQLt.ExpectNoException
	EXECUTE AS USER = 'Student'
	EXEC ('SELECT [ENR_CODE]
    ,[ENR_GRADE]
    ,[ENR_START_DATE]
    ,[ENR_END_DATE]
    ,[CRS_CODE]
    ,[STD_CODE]
FROM [dbo].[Enrollment]')
    REVERT
END
GO

CREATE OR ALTER PROC tests.[test Student Permission Fail]
AS
BEGIN 
	EXEC tSQLt.ExpectException
	EXECUTE AS USER = 'Student'
	EXEC ('SELECT [CRS_CODE]
      ,[CRS_TITLE]
      ,[CRS_CREDIT_HOURS]
      ,[CRS_DESCRIPTION]
      ,[CRS_BOOK_NAME]
      ,[INS_CODE]
      ,[DPT_CODE]
	 FROM [dbo].[Course]')
    REVERT
END
GO

CREATE OR ALTER PROC tests.[test Teacher Permission Pass]
AS
BEGIN 
	EXEC tSQLt.ExpectNoException
	EXECUTE AS USER = 'Teacher'
	EXEC ('SELECT [STD_CODE]
      ,[STD_FNAME]
      ,[STD_LNAME]
      ,[STD_CUM_GPA]
      ,[STD_START_DATE]
  FROM [dbo].[Student]')
    REVERT
END
GO

CREATE OR ALTER PROC tests.[test Teacher Permission Fail]
AS
BEGIN 
	EXEC tSQLt.ExpectException
	EXECUTE AS USER = 'Teacher'
	EXEC ('SELECT [DPT_CODE]
      ,[DPT_NAME]
      ,[DPT_BUDGET]
      ,[DPT_DESCRIPTION]
      ,[DPT_CREATION_DATE]
  FROM [dbo].[Department]')
    REVERT
END
GO

tSQLt.Run 'tests'

GO
