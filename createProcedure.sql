CREATE PROCEDURE SelectAllDepartmentsBudgetGreaterThan @Budget REAL
AS
SELECT * FROM [dbo].[Department] WHERE [DPT_BUDGET] > @Budget
GO