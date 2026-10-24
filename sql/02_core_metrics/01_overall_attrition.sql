-- Overall workforce KPIs
SELECT
    COUNT(*) AS TotalEmployees,
    SUM(Attrition = 'Yes') AS EmployeesLeft,
    SUM(Attrition = 'No') AS EmployeesStayed,
    ROUND(100.0 * SUM(Attrition = 'Yes') / NULLIF(COUNT(*), 0), 2) AS AttritionRatePct
FROM employees;
