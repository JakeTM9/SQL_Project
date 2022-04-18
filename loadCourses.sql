USE [School]
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


