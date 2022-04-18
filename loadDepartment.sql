USE [School]
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


