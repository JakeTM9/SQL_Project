USE [School]
-- Create a new table called 'Customers' in schema 'dbo'
-- Drop the tableS if it already exists
IF OBJECT_ID('dbo.Student', 'U') IS NOT NULL
DROP TABLE dbo.Student
IF OBJECT_ID('dbo.Department', 'U') IS NOT NULL
DROP TABLE dbo.Department
IF OBJECT_ID('dbo.Instructor', 'U') IS NOT NULL
DROP TABLE dbo.Instructor
IF OBJECT_ID('dbo.Course', 'U') IS NOT NULL
DROP TABLE dbo.Course
IF OBJECT_ID('dbo.Enrollment', 'U') IS NOT NULL
DROP TABLE dbo.Enrollment
GO

CREATE TABLE dbo.Student
(
   STD_CODE       INT    NOT NULL   PRIMARY KEY, -- primary key column
   STD_FNAME      [NVARCHAR](50)  NOT NULL,
   STD_LNAME  [NVARCHAR](50)  NOT NULL,
   STD_CUM_GPA     REAL  NOT NULL,
   STD_START_DATE DATE
);

CREATE TABLE dbo.Department
(
   DPT_CODE       INT    NOT NULL   PRIMARY KEY, -- primary key column
   DPT_NAME      [NVARCHAR](50)  NOT NULL,
   DPT_BUDGET     REAL  NOT NULL,
   DPT_DESCRIPTION      [NVARCHAR](50)  NOT NULL,
   DPT_CREATION_DATE DATE
);

CREATE TABLE dbo.Instructor
(
   INS_CODE       INT    NOT NULL   PRIMARY KEY, -- primary key column
   INS_FNAME      [NVARCHAR](50)  NOT NULL,
   INS_LNAME      [NVARCHAR](50)  NOT NULL,
   INS_START_DATE DATE,
   INS_SALARY    REAL  NOT NULL,
   DPT_CODE     INT    NOT NULL   FOREIGN KEY REFERENCES dbo.Department(DPT_CODE) -- secondary key column
);

CREATE TABLE dbo.Course
(
   CRS_CODE       INT    NOT NULL   PRIMARY KEY, -- primary key column
   CRS_TITLE      [NVARCHAR](50)  NOT NULL,
   CRS_CREDIT_HOURS  INT NOT NULL,
   CRS_DESCRIPTION      [NVARCHAR](50)  NOT NULL,
   CRS_BOOK_NAME      [NVARCHAR](50)  NOT NULL,
   INS_CODE     INT    NOT NULL   FOREIGN KEY REFERENCES dbo.Instructor(INS_CODE), -- secondary key column
   DPT_CODE     INT    NOT NULL   FOREIGN KEY REFERENCES dbo.Department(DPT_CODE) -- secondary key column
);

CREATE TABLE dbo.Enrollment
(
   ENR_CODE       INT    NOT NULL   PRIMARY KEY, -- primary key column
   ENR_GRADE      [NVARCHAR](50)  NOT NULL,
   ENR_START_DATE  DATE,
   ENR_END_DATE  DATE,
   CRS_CODE     INT    NOT NULL   FOREIGN KEY REFERENCES dbo.Course(CRS_CODE), -- secondary key column
   STD_CODE     INT    NOT NULL   FOREIGN KEY REFERENCES dbo.Student(STD_CODE), -- secondary key column
);

GO

