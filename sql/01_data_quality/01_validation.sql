-- Qelvorith Dynamics HR Analytics
-- Run after importing the CSV into a table named employees.

-- Row count and unique identifiers
SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT EmployeeID) AS UniqueEmployees
FROM employees;

-- Key-field missing-value checks
SELECT
    SUM(EmployeeID IS NULL) AS MissingEmployeeIDs,
    SUM(MonthlySalaryINR IS NULL) AS MissingSalaries,
    SUM(Department IS NULL) AS MissingDepartments,
    SUM(Attrition IS NULL) AS MissingAttritionValues
FROM employees;

-- Inspect column types
DESCRIBE employees;

-- Attrition label distribution
SELECT Attrition, COUNT(*) AS EmployeeCount
FROM employees
GROUP BY Attrition
ORDER BY Attrition;
