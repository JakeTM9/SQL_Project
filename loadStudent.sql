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


