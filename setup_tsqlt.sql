EXEC sp_configure 'clr enabled', 1;
RECONFIGURE;
GO
EXEC sp_configure 'clr enabled'
USE School
GO
ALTER DATABASE School SET TRUSTWORTHY ON;