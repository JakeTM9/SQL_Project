USE [School]
GO

INSERT INTO [dbo].[Instructor]
           ([INS_CODE]
           ,[INS_FNAME]
           ,[INS_LNAME]
           ,[INS_START_DATE]
           ,[INS_SALARY])
     VALUES
           (0002,N'John',N'Smith',N'2019-01-01',40000),
		   (0001,N'Amy',N'Schumer',N'2018-01-01',50000),
		   (0003,N'Robin',N'Williams',N'2017-01-01',100000.26),
		   (0005,N'Commander',N'Shepard',N'2016-01-01',15000),
		   (0004,N'Harry',N'Potter',N'2015-01-01',13370)
GO


