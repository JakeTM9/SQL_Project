USE [School]
GO

INSERT INTO [dbo].[Student]
           ([STD_CODE]
           ,[STD_FNAME]
           ,[STD_LNAME]
           ,[STD_CUM_GPA]
           ,[STD_START_DATE])
     VALUES
           (0001,N'Jakob',N'Wardega',4.0,N'2021-06-24'),
		   (0002,N'Adam',N'Smith',2.5,N'2021-06-24'),
		   (0003,N'Terry',N'Cruz',3.6,N'2021-06-24'),
		   (0004,N'Jane',N'Jones',3.2,N'2021-06-24'),
		   (0005,N'Lara',N'Croft',2.8,N'2021-06-24')
GO

INSERT INTO [dbo].[Department]
           ([DPT_CODE]
           ,[DPT_NAME]
           ,[DPT_BUDGET]
           ,[DPT_DESCRIPTION]
           ,[DPT_CREATION_DATE])
     VALUES
           (0001,N'Department of Engineering',200000,N'A description of the department of Engineering',N'2010-01-01'),
		   (0002,N'Department of Writers',100000,N'A description of the department of Writing',N'2011-01-01'),
		   (0003,N'Department of Math',200000,N'A description of the department of Math',N'2012-01-01'),
		   (0004,N'Department of Historians',600000,N'A description of the department of History',N'2013-01-01'),
		   (0005,N'Department of Literature',800000,N'A description of the department of Engineering',N'2014-01-01')
GO

INSERT INTO [dbo].[Instructor]
           ([INS_CODE]
           ,[INS_FNAME]
           ,[INS_LNAME]
           ,[INS_START_DATE]
           ,[INS_SALARY]
		   ,[DPT_CODE])
     VALUES
           (0001,N'John',N'Smith',N'2019-01-01',40000,0004),
		   (0002,N'Amy',N'Schumer',N'2018-01-01',50000,0001),
		   (0003,N'Robin',N'Williams',N'2017-01-01',100000.26,0005),
		   (0004,N'Commander',N'Shepard',N'2016-01-01',15000,0002),
		   (0005,N'Harry',N'Potter',N'2015-01-01',13370,0003)
GO

INSERT INTO [dbo].[Course]
           ([CRS_CODE]
           ,[CRS_TITLE]
           ,[CRS_CREDIT_HOURS]
           ,[CRS_DESCRIPTION]
           ,[CRS_BOOK_NAME]
		   ,[INS_CODE]
		   ,[DPT_CODE])
     VALUES
           (0001,N'Math',8,N'A great class about mathematics',N'Green Eggs and Math',0005,0003),
		   (0002,N'Writing',4,N'A pretty ok class about writing',N'Oh, the Places Youll Write',0004,0002),
		   (0003,N'Reading',6,N'A terrible class about reading',N'One fish, two fish, red fish, reading',0003,0005),
		   (0004,N'Science',3,N'A fantastic class about science',N'Fox in Science',0002,0001),
		   (0005,N'History',3,N'An average class about history',N'If I Ran the Zoo',0001,0004)
GO

INSERT INTO [dbo].[Enrollment]
           ([ENR_CODE]
           ,[ENR_GRADE]
           ,[ENR_START_DATE]
           ,[ENR_END_DATE]
           ,[CRS_CODE]
           ,[STD_CODE])
     VALUES
           (0001,N'A',N'2022-05-01',N'2022-08-12',0005,0003),
		   (0002,N'A',N'2022-05-01',N'2022-08-12',0004,0004),
		   (0003,N'A',N'2022-05-01',N'2022-08-12',0003,0005),
		   (0004,N'A',N'2022-05-01',N'2022-08-12',0002,0001),
		   (0005,N'A',N'2022-05-01',N'2022-08-12',0001,0002)
GO
